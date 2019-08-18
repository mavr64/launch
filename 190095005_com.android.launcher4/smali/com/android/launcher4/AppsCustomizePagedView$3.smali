.class Lcom/android/launcher4/AppsCustomizePagedView$3;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/AppsCustomizePagedView;->preloadWidget(Lcom/android/launcher4/PendingAddWidgetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/AppsCustomizePagedView;

.field private final synthetic val$info:Lcom/android/launcher4/PendingAddWidgetInfo;

.field private final synthetic val$pInfo:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher4/AppsCustomizePagedView;Landroid/appwidget/AppWidgetProviderInfo;Lcom/android/launcher4/PendingAddWidgetInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    iput-object p2, p0, Lcom/android/launcher4/AppsCustomizePagedView$3;->val$pInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object p3, p0, Lcom/android/launcher4/AppsCustomizePagedView$3;->val$info:Lcom/android/launcher4/PendingAddWidgetInfo;

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 755
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    iget v3, v3, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCleanupState:I

    if-eq v3, v8, :cond_0

    .line 775
    :goto_0
    return-void

    .line 758
    :cond_0
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-static {v3}, Lcom/android/launcher4/AppsCustomizePagedView;->access$0(Lcom/android/launcher4/AppsCustomizePagedView;)Lcom/android/launcher4/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher4/Launcher;->getAppWidgetHost()Lcom/android/launcher4/LauncherAppWidgetHost;

    move-result-object v3

    .line 759
    iget-object v4, p0, Lcom/android/launcher4/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-virtual {v4}, Lcom/android/launcher4/AppsCustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher4/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    iget v5, v5, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetLoadingId:I

    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView$3;->val$pInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher4/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 760
    .local v0, "hostView":Landroid/appwidget/AppWidgetHostView;
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView$3;->val$info:Lcom/android/launcher4/PendingAddWidgetInfo;

    iput-object v0, v3, Lcom/android/launcher4/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 761
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    const/4 v4, 0x2

    iput v4, v3, Lcom/android/launcher4/AppsCustomizePagedView;->mWidgetCleanupState:I

    .line 762
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 763
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-static {v3}, Lcom/android/launcher4/AppsCustomizePagedView;->access$0(Lcom/android/launcher4/AppsCustomizePagedView;)Lcom/android/launcher4/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher4/Launcher;->getWorkspace()Lcom/android/launcher4/Workspace;

    move-result-object v3

    .line 764
    iget-object v4, p0, Lcom/android/launcher4/AppsCustomizePagedView$3;->val$info:Lcom/android/launcher4/PendingAddWidgetInfo;

    iget v4, v4, Lcom/android/launcher4/PendingAddWidgetInfo;->spanX:I

    iget-object v5, p0, Lcom/android/launcher4/AppsCustomizePagedView$3;->val$info:Lcom/android/launcher4/PendingAddWidgetInfo;

    iget v5, v5, Lcom/android/launcher4/PendingAddWidgetInfo;->spanY:I

    iget-object v6, p0, Lcom/android/launcher4/AppsCustomizePagedView$3;->val$info:Lcom/android/launcher4/PendingAddWidgetInfo;

    .line 763
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/launcher4/Workspace;->estimateItemSize(IILcom/android/launcher4/ItemInfo;Z)[I

    move-result-object v2

    .line 769
    .local v2, "unScaledSize":[I
    new-instance v1, Lcom/android/launcher4/DragLayer$LayoutParams;

    .line 770
    aget v3, v2, v7

    aget v4, v2, v8

    .line 769
    invoke-direct {v1, v3, v4}, Lcom/android/launcher4/DragLayer$LayoutParams;-><init>(II)V

    .line 771
    .local v1, "lp":Lcom/android/launcher4/DragLayer$LayoutParams;
    iput v7, v1, Lcom/android/launcher4/DragLayer$LayoutParams;->y:I

    iput v7, v1, Lcom/android/launcher4/DragLayer$LayoutParams;->x:I

    .line 772
    iput-boolean v8, v1, Lcom/android/launcher4/DragLayer$LayoutParams;->customPosition:Z

    .line 773
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    iget-object v3, p0, Lcom/android/launcher4/AppsCustomizePagedView$3;->this$0:Lcom/android/launcher4/AppsCustomizePagedView;

    invoke-static {v3}, Lcom/android/launcher4/AppsCustomizePagedView;->access$0(Lcom/android/launcher4/AppsCustomizePagedView;)Lcom/android/launcher4/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher4/Launcher;->getDragLayer()Lcom/android/launcher4/DragLayer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher4/DragLayer;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
