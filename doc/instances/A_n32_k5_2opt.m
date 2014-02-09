hold on;
plot([ 82; 96; 98; 98; 93; 91; 49; 42; 19; 20; 82], [ 76; 44; 14;  5;  3;  2;  8;  9; 32; 70; 76], '-ro', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 82; 96; 98; 98; 93; 91; 49; 42; 19; 20; 82], [ 76; 44; 14;  5;  3;  2;  8;  9; 32; 70; 76], num2str([   0;   1;  21;  31;  19;  17;   3;  23;  18;  29;   0]));
plot([ 82; 80; 50; 23; 13;  5; 14;  2;  5; 61; 82], [ 76; 55;  5; 15;  7; 10; 24; 39; 42; 59; 76], '-go', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 82; 80; 50; 23; 13;  5; 14;  2;  5; 61; 82], [ 76; 55;  5; 15;  7; 10; 24; 39; 42; 59; 76], num2str([   0;  26;   2;  28;   4;  11;   8;   9;  22;  14;   0]));
plot([ 82; 50; 29;  9;  3;  1; 58; 84; 82], [ 76; 93; 89; 97; 82; 65; 30; 25; 76], '-bo', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 82; 50; 29;  9;  3;  1; 58; 84; 82], [ 76; 93; 89; 97; 82; 65; 30; 25; 76], num2str([   0;  20;   5;  25;  10;  15;   6;  13;   0]));
plot([ 82; 98; 84; 88; 85; 61; 82], [ 76; 52; 39; 51; 60; 62; 76], '-ko', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 82; 98; 84; 88; 85; 61; 82], [ 76; 52; 39; 51; 60; 62; 76], num2str([   0;  12;   7;  16;  30;  24;   0]));
plot([ 82; 57; 82], [ 76; 69; 76], '--ro', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 82; 57; 82], [ 76; 69; 76], num2str([   0;  27;   0]));
legend('Route 1','Route 2','Route 3','Route 4','Route 5',0);
xlabel('x');
ylabel('y');
