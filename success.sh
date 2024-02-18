#!/bin/bash

#同ディレクトリ内のtxtファイルにgrepを実行し,検索パターンが見つかった場合,メッセージを出力する関数.
#第一引数に検索パターン,第二引数に出力するメッセージを渡す
grep_text() {
    for txt_file in $(ls . | grep ".txt$"); do
        grep_result=$(grep $1 $txt_file)
        if [ $? -eq 0 ]; then
            eval echo $2
        fi
    done
}

query='hoge'
#関数内で使用している変数を出力メッセージに含める
message='検索対象が見つかりました. 見つかったファイル名:$txt_file'
#grep_text $query "${message}"
grep_text $query "$message"

query='fuga'
message='検索対象が見つかりました. 見つかった文:$grep_result'
#grep_text $query "${message}"
grep_text $query "$message"
