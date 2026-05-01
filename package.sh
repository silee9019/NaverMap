#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

readonly EXTENSION_DIR="NaverMap.popclipext"
readonly OUTPUT_FILE="NaverMap.popclipextz"

# 패키징에 필요한 zip 명령이 없으면 명확한 오류로 중단합니다.
if ! command -v zip >/dev/null 2>&1; then
  echo "오류: zip 명령을 찾을 수 없습니다. zip을 설치한 뒤 다시 실행하세요." >&2
  exit 127
fi

if [ ! -d "$EXTENSION_DIR" ]; then
  echo "오류: 확장 폴더를 찾을 수 없습니다: $EXTENSION_DIR" >&2
  exit 1
fi

# 기존 패키지 삭제
rm -f "$OUTPUT_FILE"

# 폴더 압축 및 확장자 변경
zip -r -X "$OUTPUT_FILE" "$EXTENSION_DIR" \
  -x "*.DS_Store" -x "*/__MACOSX/*" -x "*/._*" > /dev/null

echo "패키징 완료: $OUTPUT_FILE"
