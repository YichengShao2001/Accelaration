%{
本项目由上海交通大学数学科学学院2023级应用统计专业组织编写.

感谢王成老师对于本项目的倾力指导!
感谢刘若禺同学对于本项目的合作与贡献!
感谢李昌骏同学对于本项目提供的诸多宝贵建议!

本项目涉及到的内容均可快速封装为对应的关于维数n, p, 迭代次数iter的函数.

%}

% 任务一: 创建高维矩阵, 进行简单转置运算或矩阵乘法运算.
clear all;
clc;
iter = 10;
time = 0;

for i = 1:iter
    tic;
    n = 9000;
    A = rand(n, n);
    trans_A = A';
    A_Square = A .* A;
    time =  time + toc;
end

time_1 = time/iter;
fprintf('任务一平均用时: %f 秒.\n', time_1);

% 任务二: 生成高维矩阵, 并进行高次矩阵乘法运算
clear all;
iter = 10;
time = 0;
n = 3600;
N = 1200;

for i = 1:iter
    tic;
    A = randn(n, n);
    A_N = A.^N;
    time = time + toc;
end
time_2 = time/iter;

fprintf('任务二平均用时: %f 秒.\n', time_2);

% 任务三: 生成多个随机值, 并对随机值进行排序.
clear all;
iter = 10;
time = 0;
n = 1.4 * 10^7;

for i = 1:iter
    tic;
    randoms = randn(n, 1);
    sorted  = sort(randoms);
    time = time + toc;
end

time_3 = time/iter;
fprintf('任务三平均用时: %f 秒.\n', time_3);

% 任务四: 生成高维向量做交叉乘积.
clear all;
iter = 10;
time = 0;
n = 3*10^4;

for i = 1:iter
    tic;
    a = randn(n, 1);
    b = a * a';
    time = time + toc;
end

time_4 = time/iter;
fprintf('任务四平均用时: %f 秒.\n', time_4);

% 任务五: 基于高维矩阵的回归分析.
clear all;
iter = 10;
time = 0;
n = 2.5*10^4;
p = 250;

for i = 1:iter
    tic;
    X = randn(n, p);
    Y = randn(n, 1);
    beta = pinv(X'* X) * X'* Y;
    time = time + toc;
end

time_5 = time/iter;
fprintf('任务五平均用时: %f 秒.\n', time_5);


%{ 
第一阶段的某次运行结果为:

任务一平均用时: 1.070754 秒.
任务二平均用时: 0.582707 秒.
任务三平均用时: 0.630977 秒.
任务四平均用时: 0.608363 秒.
任务五平均用时: 0.133483 秒.

%}



% 任务六: 对二百万个随机值做快速Fourier变换.
clear all;
iter = 10;
time = 0;
n = 1.3 * 10^7;

for i = 1:iter
    tic;
    randoms = randn(n, 1);
    result = fft(randoms);
    time = time + toc;
end

time_6 = time/iter;
fprintf('任务六平均用时: %f 秒.\n', time_6);

% 任务七: 对于高维矩阵取特征值.
clear all;
iter = 10;
time = 0;
n = 750;

for i = 1:iter
    tic;
    matrix = randn(n, n);
    eigenvalues = eig(matrix);
    time = time + toc;
end

time_7 = time/iter;
fprintf('任务七平均用时: %f 秒.\n', time_7);

% 任务八: 对于高维矩阵取行列式.
clear all;
iter = 10;
time = 0;
n = 2200;

for i = 1:iter
    tic;
    matrix = randn(n, n);
    det_value = det(matrix);
    time = time + toc;
end

time_8 = time/iter;
fprintf('任务八平均用时: %f 秒.\n', time_8);

% 任务九: 对于高维矩阵进行Cholesky分解.
clear all;
iter = 10;
time = 0;
n = 1500;

for i = 1:iter
    tic;
    matrix = randn(n, n);
    sym_matrix = matrix' * matrix;
    cholesky_matrix = chol(sym_matrix, 'lower');
    time = time + toc;
end

time_9 = time/iter;
fprintf('任务九平均用时: %f 秒.\n', time_9);

% 任务十: 对于高维矩阵进行求逆运算.
clear all;
iter = 10;
time = 0;
n = 1400;

for i = 1:iter
    tic;
    matrix = randn(n, n);
    pinv(matrix);
    time = time + toc;
end

time_10 = time/iter;
fprintf('任务十平均用时: %f 秒.\n', time_10);

%{ 
第二阶段的某次运行结果为:

任务六平均用时: 0.356680 秒.
任务七平均用时: 0.236822 秒.
任务八平均用时: 0.125861 秒.
任务九平均用时: 0.070369 秒.
任务十平均用时: 0.907317 秒.

%}

% 任务十一: 求解Fibonacci递推数列.
clear all;
iter = 10;
time = 0;
n = 1.8 * 10^7;

for i = 1:iter
    tic;
    fibonacci_numbers = zeros(1, n);
    fibonacci_numbers(1:2) = [0, 1];
    for j = 3:n
        fibonacci_numbers(j) = fibonacci_numbers(j-1) + fibonacci_numbers(j-2);
    end
    time = time + toc;
end

time_11 = time/iter;
fprintf('任务十一平均用时: %f 秒.\n', time_11);

% 任务十二: 创建高维Hilbert矩阵.
clear all;
iter = 10;
time = 0;
n = 1.1*10^4;

for i = 1:iter
    tic;
    hilbert_matrix = hilb(n);
    time = time + toc;
end

time_12 = time/iter;
fprintf('任务十二平均用时: %f 秒.\n', time_12);

% 任务十三: 计算多对数组的最大公约数.
%{
function result = gcd_recursive(a, b)
    if b == 0
        result = a;
    else
        result = gcd_recursive(b, mod(a, b));
    end
end
%}

clear all;
iter = 10;
time = 0;
n = 3.5*10^5;
p = 1400;

for i = 1:iter
    tic;
    pairs_num = n;
    pairs = randi([1, p], pairs_num, 2);
    gcd_values = zeros(1, pairs_num);
    for j = 1:pairs_num
        gcd_values(j) = gcd_recursive(pairs(j, 1), pairs(j, 2));
    end
    time = time + toc;
end

time_13 = time/iter;
fprintf('任务十三平均用时: %f 秒.\n', time_13);

% 任务十四: 创建高维Toeplitz矩阵.
clear all;
iter = 10;
time = 0;
n = 3500;

for k = 1:iter
    tic;
    first_row = 1:n;
    toeplitz_matrix = zeros(n);
    for i = 1:n
        for j = 1:n
            toeplitz_matrix(i, j) = first_row(abs(i - j) + 1);
        end
    end
    time = time + toc;
end

time_14 = time/iter;
fprintf('任务十四平均用时: %f 秒.\n', time_14);

% 任务十五: 对高维矩阵做主成分分析.
clear all;
iter = 10;
time = 0;
n = 1.7*10^4;
p = 200;

for k = 1:iter
    tic;
    data_matrix = randn(n, p);
    [coefficients, score, latent, ~, explained] = pca(data_matrix);
    time = time + toc;
end

time_15 = time/iter;
fprintf('任务十五平均用时: %f 秒.\n', time_15);

%{ 
第三阶段的某次运行结果为:

任务十一平均用时: 0.096492 秒.
任务十二平均用时: 0.181101 秒.
任务十三平均用时: 0.124895 秒.
任务十四平均用时: 0.084871 秒.
任务十五平均用时: 0.246096 秒.

%}