# Hardsub

Руслан Охитин, Новосибирск, 2020
ruslan.ohitin@gmail.com

## Цель проекта

Проект по преобразованию песен в формате mp3 в виедофайлы mp4 с текстами песен.
Их можно проигрывать на телевизоре в граппах детского царства.

Нужно сгенерировать видео, в котором будет только цветной фон, по времени равное песне.
Потом добавить песню, как звуковую дорожку.
После этого создать пустой файл субтитров.
С помощью редактора субтитров записать текст песни с привязкой ко времени.
"Впечатать" субтитры в видео, как картинку (хардсаб), чтобы видео можно было проиграть на телевизоре.

Установка программ с помощью пакетного менеджера chocolatey <https://chocolatey.org>
choco install ffmpeg subtitleedit -y

## Файлы

video.cmd - преобразует mp3 в mp4, из файла template.ass копирует субтитры
hardsub.cmd - для заданного файла "file.mp4" создает видео "file Sub.mp4", вшивая в него субтиры "file.ass"
template.ass - шаблон субтитров. Описание формата есть в файле ass-specs.pdf в папке docs

## TODO

Можно во время проигрывания видео отображать вверху название песни. Для этого нужно указать время субтитра с типом Title.
