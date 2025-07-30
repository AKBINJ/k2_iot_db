### f_join >>> d_practice ###

# korea_db에서 구매 금액(amount)가 가장 높은 회원의
# member_id, name, 총 구매 금액 조회

select
	M.member_id, M.name, SUM(P.amount) AS total_amount
from
	`members` M
    join `purchases` P
    on M.member_id = P.member_id
group by
	M.member_id
order by
	total_amount desc
LIMIT 1;

## baseball_league 사용 예제 (JOIN) ##
USE baseball_league;

select * from `players`;
select * from `teams`;

# 1.  내부 조인
# : 타자인 선수와 해당 선수가 속한 팀 이름 가져오기
# - players 테이블 (선수 이름)
# - teams 테이블(팀 이름)
select
	p.name, t.name
From
	`players` P -- 기준 테이블
	Inner JOIN `teams` T
    ON P.team_id = T.team_id
where
	P.position = '타자';
    
# 2. 1990년 이후 창단된 팀의 선수 목록 가져오기
SELECT
	T.name, P.name
FROM
	`teams` T
    JOIN `players` P
    ON T.team_id = P.team_id
where
	T.founded_year >= 1990;
    
# 2. 외부 조인
# 1) 모든 팀과 그 팀에 속한 선수 목록 가져오기
SELECT
	T.name team_name, P.name player_name
FROM
	`teams` T
    LEFT JOIN `players` P
    on T.team_id = P.team_id;
    
# 모든 팀과 해당 팀에 속한 타자 목록 가져오기
SELECT
	T.name team_name, P.name player_name
FROM
	`teams` T
    LEFT JOIN `players` P
    on T.team_id = P.team_id
where
	P.position = '타자';
    
# 2) 모든 선수와 해당 선수가 속한 팀 이름 가져오기 
select
	P.name player_names, T.name team_name
FROM
	`players` P
    LEFT JOIN `teams` T
    on T.team_id = P.team_id