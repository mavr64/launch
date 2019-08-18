.class Lcom/android/launcher4/CellLayout$ViewCluster;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewCluster"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher4/CellLayout$ViewCluster$PositionComparator;
    }
.end annotation


# static fields
.field static final BOTTOM:I = 0x3

.field static final LEFT:I = 0x0

.field static final RIGHT:I = 0x2

.field static final TOP:I = 0x1


# instance fields
.field bottomEdge:[I

.field bottomEdgeDirty:Z

.field boundingRect:Landroid/graphics/Rect;

.field boundingRectDirty:Z

.field comparator:Lcom/android/launcher4/CellLayout$ViewCluster$PositionComparator;

.field config:Lcom/android/launcher4/CellLayout$ItemConfiguration;

.field leftEdge:[I

.field leftEdgeDirty:Z

.field rightEdge:[I

.field rightEdgeDirty:Z

.field final synthetic this$0:Lcom/android/launcher4/CellLayout;

.field topEdge:[I

.field topEdgeDirty:Z

.field views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher4/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher4/CellLayout$ItemConfiguration;)V
    .locals 1
    .param p3, "config"    # Lcom/android/launcher4/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher4/CellLayout$ItemConfiguration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1596
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->this$0:Lcom/android/launcher4/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1587
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    .line 1589
    invoke-static {p1}, Lcom/android/launcher4/CellLayout;->access$1(Lcom/android/launcher4/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->leftEdge:[I

    .line 1590
    invoke-static {p1}, Lcom/android/launcher4/CellLayout;->access$1(Lcom/android/launcher4/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->rightEdge:[I

    .line 1591
    invoke-static {p1}, Lcom/android/launcher4/CellLayout;->access$2(Lcom/android/launcher4/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->topEdge:[I

    .line 1592
    invoke-static {p1}, Lcom/android/launcher4/CellLayout;->access$2(Lcom/android/launcher4/CellLayout;)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->bottomEdge:[I

    .line 1782
    new-instance v0, Lcom/android/launcher4/CellLayout$ViewCluster$PositionComparator;

    invoke-direct {v0, p0}, Lcom/android/launcher4/CellLayout$ViewCluster$PositionComparator;-><init>(Lcom/android/launcher4/CellLayout$ViewCluster;)V

    iput-object v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->comparator:Lcom/android/launcher4/CellLayout$ViewCluster$PositionComparator;

    .line 1597
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    .line 1598
    iput-object p3, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->config:Lcom/android/launcher4/CellLayout$ItemConfiguration;

    .line 1599
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout$ViewCluster;->resetEdges()V

    .line 1600
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1721
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout$ViewCluster;->resetEdges()V

    .line 1722
    return-void
.end method

.method computeEdge(I[I)V
    .locals 10
    .param p1, "which"    # I
    .param p2, "edge"    # [I

    .prologue
    .line 1619
    iget-object v8, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1620
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 1657
    return-void

    .line 1621
    :cond_0
    iget-object v8, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->config:Lcom/android/launcher4/CellLayout$ItemConfiguration;

    iget-object v8, v8, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 1622
    .local v2, "cs":Lcom/android/launcher4/CellLayout$CellAndSpan;
    packed-switch p1, :pswitch_data_0

    .line 1620
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1624
    :pswitch_0
    iget v5, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    .line 1625
    .local v5, "left":I
    iget v4, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    .local v4, "j":I
    :goto_1
    iget v8, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_1

    .line 1626
    aget v8, p2, v4

    if-lt v5, v8, :cond_2

    aget v8, p2, v4

    if-gez v8, :cond_3

    .line 1627
    :cond_2
    aput v5, p2, v4

    .line 1625
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1632
    .end local v4    # "j":I
    .end local v5    # "left":I
    :pswitch_1
    iget v8, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    add-int v6, v8, v9

    .line 1633
    .local v6, "right":I
    iget v4, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    .restart local v4    # "j":I
    :goto_2
    iget v8, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_1

    .line 1634
    aget v8, p2, v4

    if-le v6, v8, :cond_4

    .line 1635
    aput v6, p2, v4

    .line 1633
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1640
    .end local v4    # "j":I
    .end local v6    # "right":I
    :pswitch_2
    iget v7, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    .line 1641
    .local v7, "top":I
    iget v4, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    .restart local v4    # "j":I
    :goto_3
    iget v8, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_1

    .line 1642
    aget v8, p2, v4

    if-lt v7, v8, :cond_5

    aget v8, p2, v4

    if-gez v8, :cond_6

    .line 1643
    :cond_5
    aput v7, p2, v4

    .line 1641
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1648
    .end local v4    # "j":I
    .end local v7    # "top":I
    :pswitch_3
    iget v8, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v9, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    add-int v0, v8, v9

    .line 1649
    .local v0, "bottom":I
    iget v4, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    .restart local v4    # "j":I
    :goto_4
    iget v8, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v9, v2, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_1

    .line 1650
    aget v8, p2, v4

    if-le v0, v8, :cond_7

    .line 1651
    aput v0, p2, v4

    .line 1649
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1622
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getBottomEdge()[I
    .locals 2

    .prologue
    .line 1776
    iget-boolean v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->bottomEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 1777
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->bottomEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1779
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->bottomEdge:[I

    return-object v0
.end method

.method public getBoundingRect()Landroid/graphics/Rect;
    .locals 10

    .prologue
    .line 1725
    iget-boolean v3, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->boundingRectDirty:Z

    if-eqz v3, :cond_0

    .line 1726
    const/4 v1, 0x1

    .line 1727
    .local v1, "first":Z
    iget-object v3, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1737
    .end local v1    # "first":Z
    :cond_0
    iget-object v3, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    return-object v3

    .line 1727
    .restart local v1    # "first":Z
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1728
    .local v2, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->config:Lcom/android/launcher4/CellLayout$ItemConfiguration;

    iget-object v4, v4, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 1729
    .local v0, "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    if-eqz v1, :cond_2

    .line 1730
    iget-object v4, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v5, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v7, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v8, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v9, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1731
    const/4 v1, 0x0

    .line 1732
    goto :goto_0

    .line 1733
    :cond_2
    iget-object v4, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->boundingRect:Landroid/graphics/Rect;

    iget v5, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v7, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v8, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v7, v8

    iget v8, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v9, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0
.end method

.method public getEdge(I)[I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 1741
    packed-switch p1, :pswitch_data_0

    .line 1750
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout$ViewCluster;->getBottomEdge()[I

    move-result-object v0

    :goto_0
    return-object v0

    .line 1743
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout$ViewCluster;->getLeftEdge()[I

    move-result-object v0

    goto :goto_0

    .line 1745
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout$ViewCluster;->getRightEdge()[I

    move-result-object v0

    goto :goto_0

    .line 1747
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout$ViewCluster;->getTopEdge()[I

    move-result-object v0

    goto :goto_0

    .line 1741
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getLeftEdge()[I
    .locals 2

    .prologue
    .line 1755
    iget-boolean v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->leftEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 1756
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->leftEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1758
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->leftEdge:[I

    return-object v0
.end method

.method public getRightEdge()[I
    .locals 2

    .prologue
    .line 1762
    iget-boolean v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->rightEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 1763
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->rightEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1765
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->rightEdge:[I

    return-object v0
.end method

.method public getTopEdge()[I
    .locals 2

    .prologue
    .line 1769
    iget-boolean v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->topEdgeDirty:Z

    if-eqz v0, :cond_0

    .line 1770
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->topEdge:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher4/CellLayout$ViewCluster;->computeEdge(I[I)V

    .line 1772
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->topEdge:[I

    return-object v0
.end method

.method isViewTouchingEdge(Landroid/view/View;I)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "whichEdge"    # I

    .prologue
    const/4 v3, 0x1

    .line 1660
    iget-object v4, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->config:Lcom/android/launcher4/CellLayout$ItemConfiguration;

    iget-object v4, v4, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 1662
    .local v0, "cs":Lcom/android/launcher4/CellLayout$CellAndSpan;
    invoke-virtual {p0, p2}, Lcom/android/launcher4/CellLayout$ViewCluster;->getEdge(I)[I

    move-result-object v1

    .line 1664
    .local v1, "edge":[I
    packed-switch p2, :pswitch_data_0

    .line 1694
    :cond_0
    const/4 v3, 0x0

    :cond_1
    return v3

    .line 1666
    :pswitch_0
    iget v2, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    .local v2, "i":I
    :goto_0
    iget v4, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v5, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 1667
    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v6, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_1

    .line 1666
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1673
    .end local v2    # "i":I
    :pswitch_1
    iget v2, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    .restart local v2    # "i":I
    :goto_1
    iget v4, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v5, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 1674
    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    if-eq v4, v5, :cond_1

    .line 1673
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1680
    .end local v2    # "i":I
    :pswitch_2
    iget v2, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    .restart local v2    # "i":I
    :goto_2
    iget v4, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v5, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 1681
    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    iget v6, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanY:I

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_1

    .line 1680
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1687
    .end local v2    # "i":I
    :pswitch_3
    iget v2, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    .restart local v2    # "i":I
    :goto_3
    iget v4, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    iget v5, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->spanX:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    .line 1688
    aget v4, v1, v2

    iget v5, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    if-eq v4, v5, :cond_1

    .line 1687
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1664
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method resetEdges()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 1603
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->this$0:Lcom/android/launcher4/CellLayout;

    invoke-static {v1}, Lcom/android/launcher4/CellLayout;->access$2(Lcom/android/launcher4/CellLayout;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1607
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->this$0:Lcom/android/launcher4/CellLayout;

    invoke-static {v1}, Lcom/android/launcher4/CellLayout;->access$1(Lcom/android/launcher4/CellLayout;)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1611
    iput-boolean v2, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->leftEdgeDirty:Z

    .line 1612
    iput-boolean v2, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->rightEdgeDirty:Z

    .line 1613
    iput-boolean v2, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->bottomEdgeDirty:Z

    .line 1614
    iput-boolean v2, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->topEdgeDirty:Z

    .line 1615
    iput-boolean v2, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->boundingRectDirty:Z

    .line 1616
    return-void

    .line 1604
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->topEdge:[I

    aput v3, v1, v0

    .line 1605
    iget-object v1, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->bottomEdge:[I

    aput v3, v1, v0

    .line 1603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1608
    :cond_1
    iget-object v1, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->leftEdge:[I

    aput v3, v1, v0

    .line 1609
    iget-object v1, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->rightEdge:[I

    aput v3, v1, v0

    .line 1607
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method shift(II)V
    .locals 4
    .param p1, "whichEdge"    # I
    .param p2, "delta"    # I

    .prologue
    .line 1698
    iget-object v2, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1716
    invoke-virtual {p0}, Lcom/android/launcher4/CellLayout$ViewCluster;->resetEdges()V

    .line 1717
    return-void

    .line 1698
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1699
    .local v1, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->config:Lcom/android/launcher4/CellLayout$ItemConfiguration;

    iget-object v3, v3, Lcom/android/launcher4/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/CellLayout$CellAndSpan;

    .line 1700
    .local v0, "c":Lcom/android/launcher4/CellLayout$CellAndSpan;
    packed-switch p1, :pswitch_data_0

    .line 1712
    iget v3, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    add-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    goto :goto_0

    .line 1702
    :pswitch_0
    iget v3, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    sub-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    goto :goto_0

    .line 1705
    :pswitch_1
    iget v3, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    add-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->x:I

    goto :goto_0

    .line 1708
    :pswitch_2
    iget v3, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    sub-int/2addr v3, p2

    iput v3, v0, Lcom/android/launcher4/CellLayout$CellAndSpan;->y:I

    goto :goto_0

    .line 1700
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public sortConfigurationForEdgePush(I)V
    .locals 2
    .param p1, "edge"    # I

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->comparator:Lcom/android/launcher4/CellLayout$ViewCluster$PositionComparator;

    iput p1, v0, Lcom/android/launcher4/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    .line 1804
    iget-object v0, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->config:Lcom/android/launcher4/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher4/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher4/CellLayout$ViewCluster;->comparator:Lcom/android/launcher4/CellLayout$ViewCluster$PositionComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1805
    return-void
.end method
