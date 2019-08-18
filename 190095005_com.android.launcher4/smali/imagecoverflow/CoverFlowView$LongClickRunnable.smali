.class Limagecoverflow/CoverFlowView$LongClickRunnable;
.super Ljava/lang/Object;
.source "CoverFlowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Limagecoverflow/CoverFlowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongClickRunnable"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$0:Limagecoverflow/CoverFlowView;


# direct methods
.method private constructor <init>(Limagecoverflow/CoverFlowView;)V
    .locals 0

    .prologue
    .line 1171
    iput-object p1, p0, Limagecoverflow/CoverFlowView$LongClickRunnable;->this$0:Limagecoverflow/CoverFlowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Limagecoverflow/CoverFlowView;Limagecoverflow/CoverFlowView$LongClickRunnable;)V
    .locals 0

    .prologue
    .line 1171
    invoke-direct {p0, p1}, Limagecoverflow/CoverFlowView$LongClickRunnable;-><init>(Limagecoverflow/CoverFlowView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1180
    iget-object v0, p0, Limagecoverflow/CoverFlowView$LongClickRunnable;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v0}, Limagecoverflow/CoverFlowView;->access$8(Limagecoverflow/CoverFlowView;)Limagecoverflow/CoverFlowView$TopImageLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Limagecoverflow/CoverFlowView$LongClickRunnable;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v0}, Limagecoverflow/CoverFlowView;->access$8(Limagecoverflow/CoverFlowView;)Limagecoverflow/CoverFlowView$TopImageLongClickListener;

    move-result-object v0

    iget v1, p0, Limagecoverflow/CoverFlowView$LongClickRunnable;->position:I

    invoke-interface {v0, v1}, Limagecoverflow/CoverFlowView$TopImageLongClickListener;->onLongClick(I)V

    .line 1182
    iget-object v0, p0, Limagecoverflow/CoverFlowView$LongClickRunnable;->this$0:Limagecoverflow/CoverFlowView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Limagecoverflow/CoverFlowView;->access$9(Limagecoverflow/CoverFlowView;Z)V

    .line 1184
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1175
    iput p1, p0, Limagecoverflow/CoverFlowView$LongClickRunnable;->position:I

    .line 1176
    return-void
.end method
