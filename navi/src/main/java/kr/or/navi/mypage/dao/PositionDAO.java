package kr.or.navi.mypage.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.navi.vo.PositionVO;

@Mapper
public interface PositionDAO {
	public List<PositionVO> selectPositionList();
}