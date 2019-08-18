.class public Lcom/syu/util/AnimationUitls$MyFrame;
.super Ljava/lang/Object;
.source "AnimationUitls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/util/AnimationUitls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyFrame"
.end annotation


# instance fields
.field bytes:[B

.field drawable:Landroid/graphics/drawable/Drawable;

.field duration:I

.field isReady:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/util/AnimationUitls$MyFrame;->isReady:Z

    .line 28
    return-void
.end method
