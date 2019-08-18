.class public Lcom/android/launcher4/ButtonDropTarget;
.super Landroid/widget/TextView;
.source "ButtonDropTarget.java"

# interfaces
.implements Lcom/android/launcher4/DropTarget;
.implements Lcom/android/launcher4/DragController$DragListener;


# instance fields
.field protected mActive:Z

.field private mBottomDragPadding:I

.field protected mHoverColor:I

.field protected mLauncher:Lcom/android/launcher4/Launcher;

.field protected mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

.field protected mText:Landroid/widget/TextView;

.field protected final mTransitionDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher4/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher4/ButtonDropTarget;->mHoverColor:I

    .line 56
    invoke-virtual {p0}, Lcom/android/launcher4/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 57
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher4/ButtonDropTarget;->mTransitionDuration:I

    .line 58
    const v1, 0x7f0d0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher4/ButtonDropTarget;->mBottomDragPadding:I

    .line 59
    return-void
.end method

.method private isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 125
    invoke-virtual {p0}, Lcom/android/launcher4/ButtonDropTarget;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher4/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method protected getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/launcher4/ButtonDropTarget;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 75
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 80
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 76
    :cond_0
    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    .line 77
    aget-object v2, v0, v1

    goto :goto_1

    .line 75
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 117
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/launcher4/ButtonDropTarget;->mBottomDragPadding:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 119
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 120
    .local v0, "coords":[I
    iget-object v1, p0, Lcom/android/launcher4/ButtonDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher4/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 121
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 122
    return-void
.end method

.method getIconRect(IIII)Landroid/graphics/Rect;
    .locals 12
    .param p1, "viewWidth"    # I
    .param p2, "viewHeight"    # I
    .param p3, "drawableWidth"    # I
    .param p4, "drawableHeight"    # I

    .prologue
    .line 129
    iget-object v10, p0, Lcom/android/launcher4/ButtonDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v1

    .line 132
    .local v1, "dragLayer":Lcom/android/launcher4/DragLayer;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 133
    .local v5, "to":Landroid/graphics/Rect;
    invoke-virtual {v1, p0, v5}, Lcom/android/launcher4/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 135
    move v7, p3

    .line 136
    .local v7, "width":I
    move/from16 v2, p4

    .line 141
    .local v2, "height":I
    invoke-direct {p0}, Lcom/android/launcher4/ButtonDropTarget;->isRtl()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 142
    iget v10, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/launcher4/ButtonDropTarget;->getPaddingRight()I

    move-result v11

    sub-int v4, v10, v11

    .line 143
    .local v4, "right":I
    sub-int v3, v4, v7

    .line 149
    .local v3, "left":I
    :goto_0
    iget v10, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/launcher4/ButtonDropTarget;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v11, v2

    div-int/lit8 v11, v11, 0x2

    add-int v6, v10, v11

    .line 150
    .local v6, "top":I
    add-int v0, v6, v2

    .line 152
    .local v0, "bottom":I
    invoke-virtual {v5, v3, v6, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 155
    sub-int v10, p1, v7

    neg-int v10, v10

    div-int/lit8 v8, v10, 0x2

    .line 156
    .local v8, "xOffset":I
    sub-int v10, p2, v2

    neg-int v10, v10

    div-int/lit8 v9, v10, 0x2

    .line 157
    .local v9, "yOffset":I
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 159
    return-object v5

    .line 145
    .end local v0    # "bottom":I
    .end local v3    # "left":I
    .end local v4    # "right":I
    .end local v6    # "top":I
    .end local v8    # "xOffset":I
    .end local v9    # "yOffset":I
    :cond_0
    iget v10, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/launcher4/ButtonDropTarget;->getPaddingLeft()I

    move-result v11

    add-int v3, v10, v11

    .line 146
    .restart local v3    # "left":I
    add-int v4, v3, v7

    .restart local v4    # "right":I
    goto :goto_0
.end method

.method public getLocationInDragLayer([I)V
    .locals 1
    .param p1, "loc"    # [I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/launcher4/ButtonDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher4/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 164
    return-void
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/launcher4/ButtonDropTarget;->mActive:Z

    return v0
.end method

.method public onDragEnd()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 2
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 91
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    iget v1, p0, Lcom/android/launcher4/ButtonDropTarget;->mHoverColor:I

    invoke-virtual {v0, v1}, Lcom/android/launcher4/DragView;->setColor(I)V

    .line 92
    return-void
.end method

.method public onDragExit(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 2
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 99
    iget-object v0, p1, Lcom/android/launcher4/DropTarget$DragObject;->dragView:Lcom/android/launcher4/DragView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher4/DragView;->setColor(I)V

    .line 100
    return-void
.end method

.method public onDragOver(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 0
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 96
    return-void
.end method

.method public onDragStart(Lcom/android/launcher4/DragSource;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "source"    # Lcom/android/launcher4/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 104
    return-void
.end method

.method public onDrop(Lcom/android/launcher4/DropTarget$DragObject;)V
    .locals 0
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;

    .prologue
    .line 84
    return-void
.end method

.method public onFlingToDelete(Lcom/android/launcher4/DropTarget$DragObject;IILandroid/graphics/PointF;)V
    .locals 0
    .param p1, "d"    # Lcom/android/launcher4/DropTarget$DragObject;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "vec"    # Landroid/graphics/PointF;

    .prologue
    .line 88
    return-void
.end method

.method setLauncher(Lcom/android/launcher4/Launcher;)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher4/Launcher;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/launcher4/ButtonDropTarget;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 63
    return-void
.end method

.method public setSearchDropTargetBar(Lcom/android/launcher4/SearchDropTargetBar;)V
    .locals 0
    .param p1, "searchDropTargetBar"    # Lcom/android/launcher4/SearchDropTargetBar;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/launcher4/ButtonDropTarget;->mSearchDropTargetBar:Lcom/android/launcher4/SearchDropTargetBar;

    .line 71
    return-void
.end method
