hold on;
plot([ 69; 37; 15; 27; 11;  3;  1; 11; 17; 19; 69], [ 63; 33; 13; 19; 15; 35; 47; 49; 57; 83; 63], '-ro', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 69; 37; 15; 27; 11;  3;  1; 11; 17; 19; 69], [ 63; 33; 13; 19; 15; 35; 47; 49; 57; 83; 63], num2str([   0;   6;  16;  25;   4;   1;   3;  12;  26;  23;   0]));
plot([ 69; 71; 75; 67; 63; 21; 33; 35; 33; 59; 69], [ 63; 79; 89; 95; 95; 91; 85; 81; 51; 29; 63], '-go', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 69; 71; 75; 67; 63; 21; 33; 35; 33; 59; 69], [ 63; 79; 89; 95; 95; 91; 85; 81; 51; 29; 63], num2str([   0;   2;  13;  36;  17;  35;  33;   8;  30;  28;   0]));
plot([ 69; 61; 87; 93; 93; 95; 87; 69], [ 63; 15; 23; 15;  9; 23; 29; 63], '-bo', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 69; 61; 87; 93; 93; 95; 87; 69], [ 63; 15; 23; 15;  9; 23; 29; 63], num2str([   0;  37;   5;  27;  11;  22;   7;   0]));
plot([ 69; 55; 45; 41; 35; 37; 45; 61; 89; 69], [ 63; 71; 59; 51; 39; 37; 41; 21; 53; 63], '-ko', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 69; 55; 45; 41; 35; 37; 45; 61; 89; 69], [ 63; 71; 59; 51; 39; 37; 41; 21; 53; 63], num2str([   0;   9;  21;  10;  29;  34;  19;  31;  32;   0]));
plot([ 69; 71; 75; 97; 89; 47; 69], [ 63; 69; 69; 95; 43; 41; 63], '--ro', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 69; 71; 75; 97; 89; 47; 69], [ 63; 69; 69; 95; 43; 41; 63], num2str([   0;  24;  14;  15;  20;  18;   0]));
legend('Route 1','Route 2','Route 3','Route 4','Route 5',0);
xlabel('x');
ylabel('y');
