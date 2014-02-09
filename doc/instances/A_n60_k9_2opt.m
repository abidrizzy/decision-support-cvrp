hold on;
plot([ 27; 15; 29; 33; 13; 29; 45; 45; 47; 49; 57; 83; 93; 27], [ 93; 77; 39; 27; 25; 15; 11;  9;  7;  9;  9; 17; 83; 93], '-ro', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 27; 15; 29; 33; 13; 29; 45; 45; 47; 49; 57; 83; 93; 27], [ 93; 77; 39; 27; 25; 15; 11;  9;  7;  9;  9; 17; 83; 93], num2str([   0;  46;   2;   1;  49;  36;  22;  10;  54;   5;  42;  32;  37;   0]));
plot([ 27; 11;  7;  1;  3;  3;  1; 21; 15; 19; 27], [ 93; 95; 81; 59; 57; 31; 13; 29; 39; 39; 93], '-go', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 27; 11;  7;  1;  3;  3;  1; 21; 15; 19; 27], [ 93; 95; 81; 59; 57; 31; 13; 29; 39; 39; 93], num2str([   0;  20;   3;   4;  21;  53;  30;  44;  31;  28;   0]));
plot([ 27; 21; 85; 95; 45; 63; 85; 27], [ 93; 53; 11;  5; 17; 57; 77; 93], '-bo', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 27; 21; 85; 95; 45; 63; 85; 27], [ 93; 53; 11;  5; 17; 57; 77; 93], num2str([   0;   6;   9;  51;  48;  50;  27;   0]));
plot([ 27; 33; 79; 83; 89; 89; 69; 61; 27], [ 93; 93; 89; 87; 81; 75; 69; 69; 93], '-ko', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 27; 33; 79; 83; 89; 89; 69; 61; 27], [ 93; 93; 89; 87; 81; 75; 69; 69; 93], num2str([   0;  18;   7;  29;  57;  17;  15;  55;   0]));
plot([ 27; 85; 95; 83; 81; 81; 27], [ 93; 35; 27; 69; 83; 85; 93], '--ro', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 27; 85; 95; 83; 81; 81; 27], [ 93; 35; 27; 69; 83; 85; 93], num2str([   0;  56;  12;  26;   8;  13;   0]));
plot([ 27; 85; 53;  7; 15; 27], [ 93; 37; 11; 65; 69; 93], '--go', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 27; 85; 53;  7; 15; 27], [ 93; 37; 11; 65; 69; 93], num2str([   0;  43;  45;  11;  40;   0]));
plot([ 27; 37; 43; 35; 45; 65; 59; 57; 27], [ 93; 81; 61; 43; 47; 57; 69; 83; 93], '--bo', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 27; 37; 43; 35; 45; 65; 59; 57; 27], [ 93; 81; 61; 43; 47; 57; 69; 83; 93], num2str([   0;  14;  23;  24;  58;  39;  35;  19;   0]));
plot([ 27; 15; 19; 31; 41; 65; 63; 41; 27], [ 93; 95; 83; 61; 69; 93; 97; 97; 93], '--ko', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 27; 15; 19; 31; 41; 65; 63; 41; 27], [ 93; 95; 83; 61; 69; 93; 97; 97; 93], num2str([   0;  16;  25;  34;  47;  59;  38;  33;   0]));
plot([ 27; 31; 55; 27], [ 93; 97; 91; 93], '-ro', 'MarkerSize', 10, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', [0.5,0.5,0.5]);
text([ 27; 31; 55; 27], [ 93; 97; 91; 93], num2str([   0;  41;  52;   0]));
legend('Route 1','Route 2','Route 3','Route 4','Route 5','Route 6','Route 7','Route 8','Route 9',0);
xlabel('x');
ylabel('y');
