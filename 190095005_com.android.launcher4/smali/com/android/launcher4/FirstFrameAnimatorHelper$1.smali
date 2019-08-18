.class Lcom/android/launcher4/FirstFrameAnimatorHelper$1;
.super Ljava/lang/Object;
.source "FirstFrameAnimatorHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTime:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher4/FirstFrameAnimatorHelper$1;->mTime:J

    .line 1
    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 4

    .prologue
    .line 75
    invoke-static {}, Lcom/android/launcher4/FirstFrameAnimatorHelper;->access$0()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/launcher4/FirstFrameAnimatorHelper;->access$1(J)V

    .line 81
    return-void
.end method
