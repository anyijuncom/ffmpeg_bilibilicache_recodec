@echo off
title ��Ƶת��
ffmpeg.exe -i ./audio_input/audio.m4s ./temp/audio.aac
title ��Ƶת��
ffmpeg.exe -i ./video_input/video.m4s ./temp/video.mp4
title ���ӻ���
ffmpeg.exe -i ./temp/video.mp4 -i ./temp/audio.aac -vcodec copy -acodec copy -map 0:v:0 -map 1:a:0 -map_metadata -1  -shortest ./output/output.mp4
title ɾ����ʱ�ļ�
del .\temp\audio.aac
del .\temp\video.mp4
pause