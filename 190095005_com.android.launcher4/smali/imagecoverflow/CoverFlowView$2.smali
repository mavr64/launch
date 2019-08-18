.class Limagecoverflow/CoverFlowView$2;
.super Ljava/lang/Object;
.source "CoverFlowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Limagecoverflow/CoverFlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Limagecoverflow/CoverFlowView;


# direct methods
.method constructor <init>(Limagecoverflow/CoverFlowView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Limagecoverflow/CoverFlowView$2;->this$0:Limagecoverflow/CoverFlowView;

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 786
    iget-object v1, p0, Limagecoverflow/CoverFlowView$2;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v1}, Limagecoverflow/CoverFlowView;->access$7(Limagecoverflow/CoverFlowView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 788
    iget-object v1, p0, Limagecoverflow/CoverFlowView$2;->this$0:Limagecoverflow/CoverFlowView;

    iget v0, v1, Limagecoverflow/CoverFlowView;->temp:I

    .line 789
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 790
    iget-object v1, p0, Limagecoverflow/CoverFlowView$2;->this$0:Limagecoverflow/CoverFlowView;

    invoke-virtual {v1, v0}, Limagecoverflow/CoverFlowView;->setSelection(I)V

    .line 793
    .end local v0    # "index":I
    :cond_0
    return-void
.end method
