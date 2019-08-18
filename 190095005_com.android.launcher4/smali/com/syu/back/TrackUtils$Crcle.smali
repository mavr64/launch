.class public Lcom/syu/back/TrackUtils$Crcle;
.super Ljava/lang/Object;
.source "TrackUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/back/TrackUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Crcle"
.end annotation


# instance fields
.field cx:F

.field cy:F

.field radius:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 0
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # I

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p1, p0, Lcom/syu/back/TrackUtils$Crcle;->cx:F

    .line 70
    iput p2, p0, Lcom/syu/back/TrackUtils$Crcle;->cy:F

    .line 71
    iput p3, p0, Lcom/syu/back/TrackUtils$Crcle;->radius:I

    .line 72
    return-void
.end method
