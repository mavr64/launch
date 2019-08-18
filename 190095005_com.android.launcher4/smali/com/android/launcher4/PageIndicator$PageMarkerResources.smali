.class public Lcom/android/launcher4/PageIndicator$PageMarkerResources;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageMarkerResources"
.end annotation


# instance fields
.field activeId:I

.field inactiveId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/android/launcher4/LauncherApplication;->sApp:Lcom/android/launcher4/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher4/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    const v1, 0x7f0a0017

    .line 51
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v0

    iget v0, v0, Lshare/ResValue;->indicator_lightbar:I

    iput v0, p0, Lcom/android/launcher4/PageIndicator$PageMarkerResources;->activeId:I

    .line 54
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v0

    iget v0, v0, Lshare/ResValue;->indicator_normalbar:I

    iput v0, p0, Lcom/android/launcher4/PageIndicator$PageMarkerResources;->inactiveId:I

    .line 60
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v0

    iget v0, v0, Lshare/ResValue;->ic_pageindicator_current:I

    iput v0, p0, Lcom/android/launcher4/PageIndicator$PageMarkerResources;->activeId:I

    .line 57
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v0

    iget v0, v0, Lshare/ResValue;->ic_pageindicator_default:I

    iput v0, p0, Lcom/android/launcher4/PageIndicator$PageMarkerResources;->inactiveId:I

    goto :goto_0
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "aId"    # I
    .param p2, "iaId"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/android/launcher4/PageIndicator$PageMarkerResources;->activeId:I

    .line 64
    iput p2, p0, Lcom/android/launcher4/PageIndicator$PageMarkerResources;->inactiveId:I

    .line 65
    return-void
.end method
