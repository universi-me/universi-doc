# YouTubePlayerContext
O ThemeContext gerencia o player de vídeos do [YouTube](https://www.youtube.com).

## Propriedades
- `currentVideoId`: ID do vídeo atualmente em execução (`undefined` se não houver vídeo em execução);
- `currentMaterial`: Material associado ao vídeo (`undefined` se o vídeo não estiver associado a um material);
- `playingInMiniature`: `true` se o vídeo está executando em miniatura no canto da tela ou `false` caso esteja em modal;

## Métodos
- `playMaterial( material: Content, onChangeStatus?: (material: Content) => any)`: Executa o vídeo associado a um material.
