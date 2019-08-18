.class public Lcom/android/launcher4/MCellLayout;
.super Lcom/android/launcher4/CellLayout;
.source "MCellLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/launcher4/CellLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-virtual {p0, p0}, Lcom/android/launcher4/MCellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/launcher4/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0, p0}, Lcom/android/launcher4/MCellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher4/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    invoke-virtual {p0, p0}, Lcom/android/launcher4/MCellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 18
    return-void
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher4/CellLayout$LayoutParams;Z)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "childId"    # I
    .param p4, "params"    # Lcom/android/launcher4/CellLayout$LayoutParams;
    .param p5, "markCells"    # Z

    .prologue
    .line 50
    move-object v0, p4

    .line 51
    .local v0, "lp":Lcom/android/launcher4/CellLayout$LayoutParams;
    iget v1, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {p0}, Lcom/android/launcher4/MCellLayout;->getCountX()I

    move-result v2

    if-gt v1, v2, :cond_3

    iget v1, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0}, Lcom/android/launcher4/MCellLayout;->getCountY()I

    move-result v2

    if-gt v1, v2, :cond_3

    .line 52
    iget v1, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher4/MCellLayout;->getCountX()I

    move-result v1

    iput v1, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellHSpan:I

    .line 53
    :cond_0
    iget v1, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher4/MCellLayout;->getCountY()I

    move-result v1

    iput v1, v0, Lcom/android/launcher4/CellLayout$LayoutParams;->cellVSpan:I

    .line 55
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 56
    if-eqz p5, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher4/MCellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 58
    :cond_2
    const/4 v1, 0x1

    .line 60
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "duration"    # I
    .param p5, "delay"    # I
    .param p6, "permanent"    # Z
    .param p7, "adjustOccupied"    # Z

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method createArea(IIIIIILandroid/view/View;[I[II)[I
    .locals 1
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "dragView"    # Landroid/view/View;
    .param p8, "result"    # [I
    .param p9, "resultSpan"    # [I
    .param p10, "mode"    # I

    .prologue
    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method existsEmptyCell()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 33
    invoke-super/range {p0 .. p5}, Lcom/android/launcher4/CellLayout;->onLayout(ZIIII)V

    .line 34
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 74
    instance-of v2, p1, Lcom/android/launcher4/MCellLayout;

    if-eqz v2, :cond_1

    .line 75
    invoke-static {}, Lcom/android/launcher4/Launcher;->getWorkSpace()Lcom/android/launcher4/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->isInOverviewMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    invoke-static {}, Lcom/android/launcher4/Launcher;->getWorkSpace()Lcom/android/launcher4/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher4/Workspace;->enterOverviewMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 78
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher4/Launcher;->hideHotseat(Z)V

    .line 81
    :cond_0
    invoke-static {}, Lcom/android/launcher4/Launcher;->getWorkSpace()Lcom/android/launcher4/Workspace;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher4/Workspace;->performHapticFeedback(II)Z

    .line 96
    :cond_1
    :goto_0
    return v0

    .line 86
    :cond_2
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 87
    invoke-static {}, Lcom/android/launcher4/Launcher;->getLauncher()Lcom/android/launcher4/Launcher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher4/Launcher;->showHotseat(Z)V

    :cond_3
    move v0, v1

    .line 90
    goto :goto_0
.end method
