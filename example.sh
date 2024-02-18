#!/bin/bash

value='hoge'

#文字列としてコマンドを変数に格納
#bash内の関数に文字列としてコマンドを与えるケースや、
#ファイルから文字列としてコマンドを読み込むケースを想定
cmd='grep $value hoge.txt'

echo $cmd
#出力 -> grep $value hoge.txt
#echoの場合、コマンドは実行されない. 変数は展開されずに、文字列として出力される

eval $cmd
#出力 -> hoge hoge
#evalの場合、変数が展開され、コマンド実行される
