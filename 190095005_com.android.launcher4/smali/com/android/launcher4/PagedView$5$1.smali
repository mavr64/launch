.class Lcom/android/launcher4/PagedView$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/PagedView$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/PagedView$5;


# direct methods
.method constructor <init>(Lcom/android/launcher4/PagedView$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/PagedView$5$1;->this$1:Lcom/android/launcher4/PagedView$5;

    .line 2867
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/android/launcher4/PagedView$5$1;->this$1:Lcom/android/launcher4/PagedView$5;

    invoke-static {v0}, Lcom/android/launcher4/PagedView$5;->access$0(Lcom/android/launcher4/PagedView$5;)Lcom/android/launcher4/PagedView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher4/PagedView;->access$5(Lcom/android/launcher4/PagedView;Z)V

    .line 2871
    iget-object v0, p0, Lcom/android/launcher4/PagedView$5$1;->this$1:Lcom/android/launcher4/PagedView$5;

    invoke-static {v0}, Lcom/android/launcher4/PagedView$5;->access$0(Lcom/android/launcher4/PagedView$5;)Lcom/android/launcher4/PagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/PagedView;->onEndReordering()V

    .line 2872
    iget-object v0, p0, Lcom/android/launcher4/PagedView$5$1;->this$1:Lcom/android/launcher4/PagedView$5;

    invoke-static {v0}, Lcom/android/launcher4/PagedView$5;->access$0(Lcom/android/launcher4/PagedView$5;)Lcom/android/launcher4/PagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher4/PagedView;->onRemoveViewAnimationCompleted()V

    .line 2873
    return-void
.end method
