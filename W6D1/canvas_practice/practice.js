document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById("mycanvas");
  const ctx = canvas.getContext('2d');

  canvas.width = 500;
  canvas.height = 500;

  ctx.fillStyle = "red";
  ctx.fillRect(0, 0, 500, 500);

  ctx.beginPath();
  ctx.arc(100,75,50,0,2*Math.PI);
  ctx.strokeStyle = 'black';
  ctx.lineWidth = 3;
  ctx.stroke();

  ctx.fillStyle = 'purple';
  ctx.fill();

  ctx.beginPath();
  ctx.arc(275, 275, 50, 0, Math.PI * 2, true); // Outer circle
  ctx.moveTo(210, 275);
  ctx.arc(275, 275, 35, 0, Math.PI, false);  // Mouth (clockwise)
  ctx.moveTo(265, 265);
  ctx.arc(260, 265, 5, 0, Math.PI * 2, true);  // Left eye
  ctx.moveTo(295, 265);
  ctx.arc(290, 265, 5, 0, Math.PI * 2, true);  // Right eye
  ctx.stroke();

});
