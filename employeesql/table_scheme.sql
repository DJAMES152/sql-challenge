CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    PRIMARY KEY ("dept_no")
);

CREATE TABLE "dept_emp" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    PRIMARY KEY ("emp_no","dept_no")
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    PRIMARY KEY ("dept_no","emp_no")
);

CREATE TABLE "employees" (
    "emp_no" INTEGER   NOT NULL,
    "emp_title" VARCHAR   NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" CHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    PRIMARY KEY ("emp_no")
);

CREATE TABLE "salaries" (
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL,
    PRIMARY KEY ("emp_no")
);

CREATE TABLE "titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    PRIMARY KEY ("title_id")
);