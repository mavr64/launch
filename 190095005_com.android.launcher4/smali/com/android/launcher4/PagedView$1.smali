.class Lcom/android/launcher4/PagedView$1;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/PagedView;

.field private final synthetic val$dragViewIndex:I

.field private final synthetic val$pageUnderPointIndex:I


# direct methods
.method constructor <init>(Lcom/android/launcher4/PagedView;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    iput p2, p0, Lcom/android/launcher4/PagedView$1;->val$pageUnderPointIndex:I

    iput p3, p0, Lcom/android/launcher4/PagedView$1;->val$dragViewIndex:I

    .line 1920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v14, 0x0

    .line 1925
    iget-object v10, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    iget v11, p0, Lcom/android/launcher4/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v10, v11}, Lcom/android/launcher4/PagedView;->snapToPage(I)V

    .line 1933
    iget v10, p0, Lcom/android/launcher4/PagedView$1;->val$dragViewIndex:I

    iget v11, p0, Lcom/android/launcher4/PagedView$1;->val$pageUnderPointIndex:I

    if-ge v10, v11, :cond_0

    move v5, v8

    .line 1935
    .local v5, "shiftDelta":I
    :goto_0
    iget v10, p0, Lcom/android/launcher4/PagedView$1;->val$dragViewIndex:I

    iget v11, p0, Lcom/android/launcher4/PagedView$1;->val$pageUnderPointIndex:I

    if-ge v10, v11, :cond_1

    iget v10, p0, Lcom/android/launcher4/PagedView$1;->val$dragViewIndex:I

    add-int/lit8 v2, v10, 0x1

    .line 1937
    .local v2, "lowerIndex":I
    :goto_1
    iget v10, p0, Lcom/android/launcher4/PagedView$1;->val$dragViewIndex:I

    iget v11, p0, Lcom/android/launcher4/PagedView$1;->val$pageUnderPointIndex:I

    if-le v10, v11, :cond_2

    iget v10, p0, Lcom/android/launcher4/PagedView$1;->val$dragViewIndex:I

    add-int/lit8 v6, v10, -0x1

    .line 1939
    .local v6, "upperIndex":I
    :goto_2
    move v1, v2

    .local v1, "i":I
    :goto_3
    if-le v1, v6, :cond_3

    .line 1969
    iget-object v9, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    iget-object v10, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    iget-object v10, v10, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v9, v10}, Lcom/android/launcher4/PagedView;->removeView(Landroid/view/View;)V

    .line 1970
    iget-object v9, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    iget-object v10, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    iget-object v10, v10, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v9, v10, v14}, Lcom/android/launcher4/PagedView;->onRemoveView(Landroid/view/View;Z)V

    .line 1971
    iget-object v9, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    iget-object v10, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    iget-object v10, v10, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    iget v11, p0, Lcom/android/launcher4/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher4/PagedView;->addView(Landroid/view/View;I)V

    .line 1972
    iget-object v9, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    iget-object v10, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    iget-object v10, v10, Lcom/android/launcher4/PagedView;->mDragView:Landroid/view/View;

    iget v11, p0, Lcom/android/launcher4/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher4/PagedView;->onAddView(Landroid/view/View;I)V

    .line 1973
    iget-object v9, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    invoke-static {v9, v8}, Lcom/android/launcher4/PagedView;->access$1(Lcom/android/launcher4/PagedView;I)V

    .line 1974
    iget-object v8, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    invoke-static {v8}, Lcom/android/launcher4/PagedView;->access$2(Lcom/android/launcher4/PagedView;)Lcom/android/launcher4/PageIndicator;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    invoke-virtual {v9}, Lcom/android/launcher4/PagedView;->getNextPage()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/launcher4/PageIndicator;->setActiveMarker(I)V

    .line 1975
    return-void

    .end local v1    # "i":I
    .end local v2    # "lowerIndex":I
    .end local v5    # "shiftDelta":I
    .end local v6    # "upperIndex":I
    :cond_0
    move v5, v9

    .line 1934
    goto :goto_0

    .line 1936
    .restart local v5    # "shiftDelta":I
    :cond_1
    iget v2, p0, Lcom/android/launcher4/PagedView$1;->val$pageUnderPointIndex:I

    goto :goto_1

    .line 1938
    .restart local v2    # "lowerIndex":I
    :cond_2
    iget v6, p0, Lcom/android/launcher4/PagedView$1;->val$pageUnderPointIndex:I

    goto :goto_2

    .line 1940
    .restart local v1    # "i":I
    .restart local v6    # "upperIndex":I
    :cond_3
    iget-object v10, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    invoke-virtual {v10, v1}, Lcom/android/launcher4/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1946
    .local v7, "v":Landroid/view/View;
    iget-object v10, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    invoke-virtual {v10}, Lcom/android/launcher4/PagedView;->getViewportOffsetX()I

    move-result v10

    .line 1947
    iget-object v11, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    invoke-virtual {v11, v1}, Lcom/android/launcher4/PagedView;->getChildOffset(I)I

    move-result v11

    .line 1946
    add-int v4, v10, v11

    .line 1948
    .local v4, "oldX":I
    iget-object v10, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    invoke-virtual {v10}, Lcom/android/launcher4/PagedView;->getViewportOffsetX()I

    move-result v10

    .line 1949
    iget-object v11, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    add-int v12, v1, v5

    invoke-virtual {v11, v12}, Lcom/android/launcher4/PagedView;->getChildOffset(I)I

    move-result v11

    .line 1948
    add-int v3, v10, v11

    .line 1955
    .local v3, "newX":I
    const/16 v10, 0x64

    invoke-virtual {v7, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 1954
    check-cast v0, Landroid/animation/AnimatorSet;

    .line 1956
    .local v0, "anim":Landroid/animation/AnimatorSet;
    if-eqz v0, :cond_4

    .line 1957
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1960
    :cond_4
    sub-int v10, v4, v3

    int-to-float v10, v10

    invoke-virtual {v7, v10}, Landroid/view/View;->setTranslationX(F)V

    .line 1961
    new-instance v0, Landroid/animation/AnimatorSet;

    .end local v0    # "anim":Landroid/animation/AnimatorSet;
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1962
    .restart local v0    # "anim":Landroid/animation/AnimatorSet;
    iget-object v10, p0, Lcom/android/launcher4/PagedView$1;->this$0:Lcom/android/launcher4/PagedView;

    iget v10, v10, Lcom/android/launcher4/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1963
    new-array v10, v9, [Landroid/animation/Animator;

    .line 1964
    const-string v11, "translationX"

    new-array v12, v9, [F

    const/4 v13, 0x0

    aput v13, v12, v14

    .line 1963
    invoke-static {v7, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v10, v14

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1965
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1966
    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1939
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3
.end method
