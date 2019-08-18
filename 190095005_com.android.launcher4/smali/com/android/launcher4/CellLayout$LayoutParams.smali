.class public Lcom/android/launcher4/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public canReorder:Z

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

.field dropped:Z

.field public isFullscreen:Z

.field public isLockedToGrid:Z

.field public tmpCellX:I

.field public tmpCellY:I

.field public useTmpCoords:Z

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "cellHSpan"    # I
    .param p4, "cellVSpan"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 3241
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 3198
    iput-boolean v1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 3203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->isFullscreen:Z

    .line 3209
    iput-boolean v1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->canReorder:Z

    .line 3242
    iput p1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    .line 3243
    iput p2, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    .line 3244
    iput p3, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    .line 3245
    iput p4, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    .line 3246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 3221
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3198
    iput-boolean v1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 3203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->isFullscreen:Z

    .line 3209
    iput-boolean v1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->canReorder:Z

    .line 3222
    iput v1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    .line 3223
    iput v1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    .line 3224
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v1, 0x1

    .line 3227
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3198
    iput-boolean v1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 3203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->isFullscreen:Z

    .line 3209
    iput-boolean v1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->canReorder:Z

    .line 3228
    iput v1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    .line 3229
    iput v1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    .line 3230
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher4/CellLayout$LayoutParams;)V
    .locals 2
    .param p1, "source"    # Lcom/android/launcher4/CellLayout$LayoutParams;

    .prologue
    const/4 v1, 0x1

    .line 3233
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 3198
    iput-boolean v1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 3203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->isFullscreen:Z

    .line 3209
    iput-boolean v1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->canReorder:Z

    .line 3234
    iget v0, p1, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    .line 3235
    iget v0, p1, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    .line 3236
    iget v0, p1, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    .line 3237
    iget v0, p1, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    iput v0, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    .line 3238
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 3286
    iget v0, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 3278
    iget v0, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 3294
    iget v0, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 3302
    iget v0, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 3282
    iput p1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->height:I

    .line 3283
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 3274
    iput p1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->width:I

    .line 3275
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 3290
    iput p1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->x:I

    .line 3291
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 3298
    iput p1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->y:I

    .line 3299
    return-void
.end method

.method public setup(IIIIZI)V
    .locals 6
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "widthGap"    # I
    .param p4, "heightGap"    # I
    .param p5, "invertHorizontally"    # Z
    .param p6, "colCount"    # I

    .prologue
    .line 3250
    iget-boolean v4, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v4, :cond_1

    .line 3251
    iget v0, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    .line 3252
    .local v0, "myCellHSpan":I
    iget v1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    .line 3253
    .local v1, "myCellVSpan":I
    iget-boolean v4, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v4, :cond_2

    iget v2, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellX:I

    .line 3254
    .local v2, "myCellX":I
    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v4, :cond_3

    iget v3, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->tmpCellY:I

    .line 3256
    .local v3, "myCellY":I
    :goto_1
    if-eqz p5, :cond_0

    .line 3257
    sub-int v4, p6, v2

    iget v5, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    sub-int v2, v4, v5

    .line 3260
    :cond_0
    mul-int v4, v0, p1

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    .line 3261
    iget v5, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    .line 3260
    iput v4, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->width:I

    .line 3262
    mul-int v4, v1, p2

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    .line 3263
    iget v5, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    .line 3262
    iput v4, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->height:I

    .line 3264
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->x:I

    .line 3265
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    iget v5, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->y:I

    .line 3267
    .end local v0    # "myCellHSpan":I
    .end local v1    # "myCellVSpan":I
    .end local v2    # "myCellX":I
    .end local v3    # "myCellY":I
    :cond_1
    return-void

    .line 3253
    .restart local v0    # "myCellHSpan":I
    .restart local v1    # "myCellVSpan":I
    :cond_2
    iget v2, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    goto :goto_0

    .line 3254
    .restart local v2    # "myCellX":I
    :cond_3
    iget v3, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
