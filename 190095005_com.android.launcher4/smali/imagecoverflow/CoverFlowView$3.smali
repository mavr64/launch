.class Limagecoverflow/CoverFlowView$3;
.super Ljava/lang/Object;
.source "CoverFlowView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Limagecoverflow/CoverFlowView;->startAnimation(D)V
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
    iput-object p1, p0, Limagecoverflow/CoverFlowView$3;->this$0:Limagecoverflow/CoverFlowView;

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Limagecoverflow/CoverFlowView$3;->this$0:Limagecoverflow/CoverFlowView;

    invoke-static {v0}, Limagecoverflow/CoverFlowView;->access$10(Limagecoverflow/CoverFlowView;)V

    .line 963
    return-void
.end method
