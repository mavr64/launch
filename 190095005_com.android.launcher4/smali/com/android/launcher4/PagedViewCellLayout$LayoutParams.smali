.class public Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "PagedViewCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/PagedViewCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public isDragging:Z

.field private mTag:Ljava/lang/Object;

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 423
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 424
    iput v1, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 425
    iput v1, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 426
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "cellHSpan"    # I
    .param p4, "cellVSpan"    # I

    .prologue
    const/4 v0, -0x1

    .line 449
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 450
    iput p1, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 451
    iput p2, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 452
    iput p3, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 453
    iput p4, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 454
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 429
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 430
    iput v0, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 431
    iput v0, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 432
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v0, 0x1

    .line 435
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    iput v0, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 437
    iput v0, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 438
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;

    .prologue
    .line 441
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 442
    iget v0, p1, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 443
    iget v0, p1, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 444
    iget v0, p1, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 445
    iget v0, p1, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    iput v0, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 446
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->mTag:Ljava/lang/Object;

    .line 485
    return-void
.end method

.method public setup(Landroid/content/Context;IIIIII)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cellWidth"    # I
    .param p3, "cellHeight"    # I
    .param p4, "widthGap"    # I
    .param p5, "heightGap"    # I
    .param p6, "hStartPadding"    # I
    .param p7, "vStartPadding"    # I

    .prologue
    .line 460
    iget v0, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 461
    .local v0, "myCellHSpan":I
    iget v1, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 462
    .local v1, "myCellVSpan":I
    iget v2, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 463
    .local v2, "myCellX":I
    iget v3, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 465
    .local v3, "myCellY":I
    mul-int v4, v0, p2

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    .line 466
    iget v5, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    .line 465
    iput v4, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->width:I

    .line 467
    mul-int v4, v1, p3

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p5

    add-int/2addr v4, v5

    .line 468
    iget v5, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    .line 467
    iput v4, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->height:I

    .line 470
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher4/LauncherAppState;->isScreenLarge()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 471
    add-int v4, p2, p4

    mul-int/2addr v4, v2

    add-int/2addr v4, p6

    iget v5, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->x:I

    .line 472
    add-int v4, p3, p5

    mul-int/2addr v4, v3

    add-int/2addr v4, p7

    iget v5, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->y:I

    .line 477
    :goto_0
    return-void

    .line 474
    :cond_0
    add-int v4, p2, p4

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->x:I

    .line 475
    add-int v4, p3, p5

    mul-int/2addr v4, v3

    iget v5, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->y:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 489
    iget v1, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
