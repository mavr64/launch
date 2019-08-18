.class Lcom/android/launcher4/AppsCustomizePagedView$7;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/AppsCustomizePagedView;->syncWidgetPageItems(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/AppsCustomizePagedView;

.field private final synthetic val$cellHeight:I

.field private final synthetic val$cellWidth:I

.field private final synthetic val$immediate:Z

.field private final synthetic val$items:Ljava/util/ArrayList;

.field private final synthetic val$layout:Lcom/android/launcher4/PagedViewGridLayout;

.field private final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/android/launcher4/AppsCustomizePagedView;IILcom/android/launcher4/PagedViewGridLayout;ZILjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    iput p2, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->val$cellWidth:I

    iput p3, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->val$cellHeight:I

    iput-object p4, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->val$layout:Lcom/android/launcher4/PagedViewGridLayout;

    iput-boolean p5, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->val$immediate:Z

    iput p6, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->val$page:I

    iput-object p7, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->val$items:Ljava/util/ArrayList;

    .line 1472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1475
    iget v3, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->val$cellWidth:I

    .line 1476
    .local v3, "maxPreviewWidth":I
    iget v4, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->val$cellHeight:I

    .line 1477
    .local v4, "maxPreviewHeight":I
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->val$layout:Lcom/android/launcher4/PagedViewGridLayout;

    invoke-virtual {v1}, Lcom/android/launcher4/PagedViewGridLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1478
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->val$layout:Lcom/android/launcher4/PagedViewGridLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher4/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher4/PagedViewWidget;

    .line 1479
    .local v13, "w":Lcom/android/launcher4/PagedViewWidget;
    invoke-virtual {v13}, Lcom/android/launcher4/PagedViewWidget;->getPreviewSize()[I

    move-result-object v12

    .line 1480
    .local v12, "maxSize":[I
    aget v3, v12, v2

    .line 1481
    const/4 v1, 0x1

    aget v4, v12, v1

    .line 1484
    .end local v12    # "maxSize":[I
    .end local v13    # "w":Lcom/android/launcher4/PagedViewWidget;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    iget-object v1, v1, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;

    .line 1485
    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-static {v2}, Lcom/android/launcher4/AppsCustomizePagedView;->access$3(Lcom/android/launcher4/AppsCustomizePagedView;)Lcom/android/launcher4/PagedViewCellLayout;

    move-result-object v2

    .line 1484
    invoke-virtual {v1, v3, v4, v2}, Lcom/android/launcher4/WidgetPreviewLoader;->setPreviewSize(IILcom/android/launcher4/PagedViewCellLayout;)V

    .line 1486
    iget-boolean v1, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->val$immediate:Z

    if-eqz v1, :cond_1

    .line 1487
    new-instance v0, Lcom/android/launcher4/AsyncTaskPageData;

    iget v1, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->val$page:I

    iget-object v2, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->val$items:Ljava/util/ArrayList;

    .line 1489
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    iget-object v7, v6, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetPreviewLoader:Lcom/android/launcher4/WidgetPreviewLoader;

    move-object v6, v5

    .line 1487
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher4/AsyncTaskPageData;-><init>(ILjava/util/ArrayList;IILcom/android/launcher4/AsyncTaskCallback;Lcom/android/launcher4/AsyncTaskCallback;Lcom/android/launcher4/WidgetPreviewLoader;)V

    .line 1490
    .local v0, "data":Lcom/android/launcher4/AsyncTaskPageData;
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-static {v1, v5, v0}, Lcom/android/launcher4/AppsCustomizePagedView;->access$1(Lcom/android/launcher4/AppsCustomizePagedView;Lcom/android/launcher4/AppsCustomizeAsyncTask;Lcom/android/launcher4/AsyncTaskPageData;)V

    .line 1491
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-static {v1, v0}, Lcom/android/launcher4/AppsCustomizePagedView;->access$2(Lcom/android/launcher4/AppsCustomizePagedView;Lcom/android/launcher4/AsyncTaskPageData;)V

    .line 1501
    .end local v0    # "data":Lcom/android/launcher4/AsyncTaskPageData;
    :goto_0
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->val$layout:Lcom/android/launcher4/PagedViewGridLayout;

    invoke-virtual {v1, v5}, Lcom/android/launcher4/PagedViewGridLayout;->setOnLayoutListener(Ljava/lang/Runnable;)V

    .line 1502
    return-void

    .line 1493
    :cond_1
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-static {v1}, Lcom/android/launcher4/AppsCustomizePagedView;->access$4(Lcom/android/launcher4/AppsCustomizePagedView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1494
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-static {v1}, Lcom/android/launcher4/AppsCustomizePagedView;->access$5(Lcom/android/launcher4/AppsCustomizePagedView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1496
    :cond_2
    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    iget v7, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->val$page:I

    iget-object v8, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->val$items:Ljava/util/ArrayList;

    .line 1498
    iget-object v1, p0, Lcom/android/launcher4/AppsCustomizePagedView$7;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-static {v1}, Lcom/android/launcher4/AppsCustomizePagedView;->access$6(Lcom/android/launcher4/AppsCustomizePagedView;)I

    move-result v11

    move v9, v3

    move v10, v4

    .line 1496
    invoke-static/range {v6 .. v11}, Lcom/android/launcher4/AppsCustomizePagedView;->access$7(Lcom/android/launcher4/AppsCustomizePagedView;ILjava/util/ArrayList;III)V

    goto :goto_0
.end method
