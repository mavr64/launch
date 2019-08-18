.class public Lcom/android/launcher4/DragLayer$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 429
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/DragLayer$LayoutParams;->customPosition:Z

    .line 430
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/android/launcher4/DragLayer$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/android/launcher4/DragLayer$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 453
    iget v0, p0, Lcom/android/launcher4/DragLayer$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 461
    iget v0, p0, Lcom/android/launcher4/DragLayer$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 441
    iput p1, p0, Lcom/android/launcher4/DragLayer$LayoutParams;->height:I

    .line 442
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 433
    iput p1, p0, Lcom/android/launcher4/DragLayer$LayoutParams;->width:I

    .line 434
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 449
    iput p1, p0, Lcom/android/launcher4/DragLayer$LayoutParams;->x:I

    .line 450
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 457
    iput p1, p0, Lcom/android/launcher4/DragLayer$LayoutParams;->y:I

    .line 458
    return-void
.end method
