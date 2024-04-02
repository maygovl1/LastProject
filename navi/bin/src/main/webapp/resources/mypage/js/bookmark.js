<script>
$(document).ready(function () {
	$('.likeBtn').click(function () {
		var $button = $(this);
		var $likeIcon = $button.find('.icon.like');
		var likeCount = parseInt($button.find('.like-count').text(), 10);

		if ($button.hasClass('active')) {
			// 이미 좋아요를 눌렀으면 좋아요 취소
			$button.removeClass('active');
			likeCount--;
		} else {
			// 좋아요를 누르지 않았으면 좋아요
			$button.addClass('active');
			likeCount++;
		}

		// 좋아요 카운트 업데이트
		$button.find('.like-count').text(likeCount);
	});

	$('.kinBtn').click(function () {
		var $button = $(this);
		var $kinIcon = $button.find('.icon.kin');

		if ($button.hasClass('active')) {
			$button.removeClass('active');
		} else {
			$button.addClass('active');
		}
	});
});
</script>