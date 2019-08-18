.class Lcom/syu/log/LogPreview$1$1;
.super Ljava/lang/Object;
.source "LogPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/log/LogPreview$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/syu/log/LogPreview$1;


# direct methods
.method constructor <init>(Lcom/syu/log/LogPreview$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/log/LogPreview$1$1;->this$1:Lcom/syu/log/LogPreview$1;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/syu/log/LogPreview$1$1;->this$1:Lcom/syu/log/LogPreview$1;

    invoke-static {v0}, Lcom/syu/log/LogPreview$1;->access$0(Lcom/syu/log/LogPreview$1;)Lcom/syu/log/LogPreview;

    move-result-object v0

    iget-boolean v0, v0, Lcom/syu/log/LogPreview;->mDebug:Z

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/syu/log/LogPreview$1$1;->this$1:Lcom/syu/log/LogPreview$1;

    invoke-static {v0}, Lcom/syu/log/LogPreview$1;->access$0(Lcom/syu/log/LogPreview$1;)Lcom/syu/log/LogPreview;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/log/LogPreview;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/syu/log/LogPreview$1$1;->this$1:Lcom/syu/log/LogPreview$1;

    invoke-static {v0}, Lcom/syu/log/LogPreview$1;->access$0(Lcom/syu/log/LogPreview$1;)Lcom/syu/log/LogPreview;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/log/LogPreview;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/syu/log/LogPreview$1$1;->this$1:Lcom/syu/log/LogPreview$1;

    invoke-static {v1}, Lcom/syu/log/LogPreview$1;->access$0(Lcom/syu/log/LogPreview$1;)Lcom/syu/log/LogPreview;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/log/LogPreview;->rootView:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/syu/log/LogPreview$1$1;->this$1:Lcom/syu/log/LogPreview$1;

    invoke-static {v2}, Lcom/syu/log/LogPreview$1;->access$0(Lcom/syu/log/LogPreview$1;)Lcom/syu/log/LogPreview;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/log/LogPreview;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/syu/log/LogPreview$1$1;->this$1:Lcom/syu/log/LogPreview$1;

    invoke-static {v0}, Lcom/syu/log/LogPreview$1;->access$0(Lcom/syu/log/LogPreview$1;)Lcom/syu/log/LogPreview;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/log/LogPreview;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/syu/log/LogPreview$1$1;->this$1:Lcom/syu/log/LogPreview$1;

    invoke-static {v0}, Lcom/syu/log/LogPreview$1;->access$0(Lcom/syu/log/LogPreview$1;)Lcom/syu/log/LogPreview;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/log/LogPreview;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/syu/log/LogPreview$1$1;->this$1:Lcom/syu/log/LogPreview$1;

    invoke-static {v1}, Lcom/syu/log/LogPreview$1;->access$0(Lcom/syu/log/LogPreview$1;)Lcom/syu/log/LogPreview;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/log/LogPreview;->rootView:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
