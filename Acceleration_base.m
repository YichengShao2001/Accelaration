%{
����Ŀ���Ϻ���ͨ��ѧ��ѧ��ѧѧԺ2023��Ӧ��ͳ��רҵ��֯��д.

��л������ʦ���ڱ���Ŀ������ָ��!
��л����خͬѧ���ڱ���Ŀ�ĺ����빱��!
��л�����ͬѧ���ڱ���Ŀ�ṩ����౦����!

����Ŀ�漰�������ݾ��ɿ��ٷ�װΪ��Ӧ�Ĺ���ά��n, p, ��������iter�ĺ���.

%}

% ����һ: ������ά����, ���м�ת����������˷�����.
clear all;
clc;
iter = 10;
time = 0;

for i = 1:iter
    tic;
    n = 2500;
    A = rand(n, n);
    trans_A = A';
    A_Square = A .* A;
    time =  time + toc;
end

time_1 = time/iter;
fprintf('����һƽ����ʱ: %f ��.\n', time_1);

% �����: ���ɸ�ά����, �����иߴξ���˷�����
clear all;
iter = 10;
time = 0;
n = 2400;
N = 1000;

for i = 1:iter
    tic;
    A = randn(n, n);
    A_N = A.^N;
    time = time + toc;
end
time_2 = time/iter;

fprintf('�����ƽ����ʱ: %f ��.\n', time_2);

% ������: ����7��������ֵ, �������ֵ��������.
clear all;
iter = 10;
time = 0;
n = 7 * 10^6;

for i = 1:iter
    tic;
    randoms = randn(n, 1);
    sorted  = sort(randoms);
    time = time + toc;
end

time_3 = time/iter;
fprintf('������ƽ����ʱ: %f ��.\n', time_3);

% ������: ����2800ά����������˻�.
clear all;
iter = 10;
time = 0;
n = 2800;

for i = 1:iter
    tic;
    a = randn(n, 1);
    b = a' * a;
    time = time + toc;
end

time_4 = time/iter;
fprintf('������ƽ����ʱ: %f ��.\n', time_4);

% ������: ����3000ά����Ļع����.
clear all;
iter = 10;
time = 0;
n = 3000;
p = 10;

for i = 1:iter
    tic;
    X = randn(n, p);
    Y = randn(n, 1);
    beta = pinv(X'* X) * X'* Y;
    time = time + toc;
end

time_5 = time/iter;
fprintf('������ƽ����ʱ: %f ��.\n', time_5);


%{ 
��һ�׶ε�ĳ�����н��Ϊ:

����һƽ����ʱ: 0.078619 ��.
�����ƽ����ʱ: 0.269022 ��.
������ƽ����ʱ: 0.309814 ��.
������ƽ����ʱ: 0.000108 ��.
������ƽ����ʱ: 0.001233 ��.

%}



% ������: �Զ���������ֵ������Fourier�任.
clear all;
iter = 10;
time = 0;
n = 2 * 10^6;
p = 10;

for i = 1:iter
    tic;
    randoms = randn(n, 1);
    result = fft(randoms);
    time = time + toc;
end

time_6 = time/iter;
fprintf('������ƽ����ʱ: %f ��.\n', time_6);

% ������: ���ڸ�ά����ȡ����ֵ.
clear all;
iter = 10;
time = 0;
n = 640;

for i = 1:iter
    tic;
    matrix = randn(n, n);
    eigenvalues = eig(matrix);
    time = time + toc;
end

time_7 = time/iter;
fprintf('������ƽ����ʱ: %f ��.\n', time_7);

% �����: ���ڸ�ά����ȡ����ʽ.
clear all;
iter = 10;
time = 0;
n = 2500;

for i = 1:iter
    tic;
    matrix = randn(n, n);
    det_value = det(matrix);
    time = time + toc;
end

time_8 = time/iter;
fprintf('�����ƽ����ʱ: %f ��.\n', time_8);

% �����: ���ڸ�ά�������Cholesky�ֽ�.
clear all;
iter = 10;
time = 0;
n = 3000;

for i = 1:iter
    tic;
    matrix = randn(n, n);
    sym_matrix = matrix' * matrix;
    cholesky_matrix = chol(sym_matrix, 'lower');
    time = time + toc;
end

time_9 = time/iter;
fprintf('�����ƽ����ʱ: %f ��.\n', time_9);

% ����ʮ: ���ڸ�ά���������������.
clear all;
iter = 10;
time = 0;
n = 1600;

for i = 1:iter
    tic;
    matrix = randn(n, n);
    pinv(matrix);
    time = time + toc;
end

time_10 = time/iter;
fprintf('����ʮƽ����ʱ: %f ��.\n', time_10);

%{ 
�ڶ��׶ε�ĳ�����н��Ϊ:

������ƽ����ʱ: 0.034674 ��.
������ƽ����ʱ: 0.192686 ��.
�����ƽ����ʱ: 0.180940 ��.
�����ƽ����ʱ: 0.426265 ��.
����ʮƽ����ʱ: 1.468218 ��.

%}

% ����ʮһ: ���Fibonacci��������.
clear all;
iter = 10;
time = 0;
n = 3.5 * 10^6;

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
fprintf('����ʮһƽ����ʱ: %f ��.\n', time_11);

% ����ʮ��: ������άHilbert����.
clear all;
iter = 10;
time = 0;
n = 3000;

for i = 1:iter
    tic;
    hilbert_matrix = hilb(n);
    time = time + toc;
end

time_12 = time/iter;
fprintf('����ʮ��ƽ����ʱ: %f ��.\n', time_12);

% ����ʮ��: ��������������Լ��.
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
n = 400000;
p = 1000;

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
fprintf('����ʮ��ƽ����ʱ: %f ��.\n', time_13);

% ����ʮ��: ������άToeplitz����.
clear all;
iter = 10;
time = 0;
n = 500;

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
fprintf('����ʮ��ƽ����ʱ: %f ��.\n', time_14);

% ����ʮ��: �Ը�ά���������ɷַ���.
clear all;
iter = 10;
time = 0;
n = 100;
p = 45;

for k = 1:iter
    tic;
    data_matrix = randn(n, p);
    [coefficients, score, latent, ~, explained] = pca(data_matrix);
    time = time + toc;
end

time_15 = time/iter;
fprintf('����ʮ��ƽ����ʱ: %f ��.\n', time_15);

%{ 
�����׶ε�ĳ�����н��Ϊ:

����ʮһƽ����ʱ: 0.019631 ��.
����ʮ��ƽ����ʱ: 0.013688 ��.
����ʮ��ƽ����ʱ: 0.151075 ��.
����ʮ��ƽ����ʱ: 0.002642 ��.
����ʮ��ƽ����ʱ: 0.013592 ��.

%}