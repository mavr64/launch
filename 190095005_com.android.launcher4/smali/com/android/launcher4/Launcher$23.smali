.class Lcom/android/launcher4/Launcher$23;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->completeTwoStageWidgetDrop(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$appWidgetId:I

.field private final synthetic val$layout:Landroid/appwidget/AppWidgetHostView;

.field private final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;ILandroid/appwidget/AppWidgetHostView;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$23;->this$0:Lcom/android/launcher4/Launcher;

    iput p2, p0, Lcom/android/launcher4/Launcher$23;->val$appWidgetId:I

    iput-object p3, p0, Lcom/android/launcher4/Launcher$23;->val$layout:Landroid/appwidget/AppWidgetHostView;

    iput p4, p0, Lcom/android/launcher4/Launcher$23;->val$resultCode:I

    .line 1513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1516
    iget-object v0, p0, Lcom/android/launcher4/Launcher$23;->this$0:Lcom/android/launcher4/Launcher;

    iget v1, p0, Lcom/android/launcher4/Launcher$23;->val$appWidgetId:I

    .line 1517
    iget-object v2, p0, Lcom/android/launcher4/Launcher$23;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v2}, Lcom/android/launcher4/Launcher;->access$59(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/ItemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/launcher4/ItemInfo;->container:J

    .line 1518
    iget-object v4, p0, Lcom/android/launcher4/Launcher$23;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v4}, Lcom/android/launcher4/Launcher;->access$59(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/ItemInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/launcher4/ItemInfo;->screenId:J

    iget-object v6, p0, Lcom/android/launcher4/Launcher$23;->val$layout:Landroid/appwidget/AppWidgetHostView;

    .line 1516
    invoke-static/range {v0 .. v7}, Lcom/android/launcher4/Launcher;->access$81(Lcom/android/launcher4/Launcher;IJJLandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 1519
    iget-object v1, p0, Lcom/android/launcher4/Launcher$23;->this$0:Lcom/android/launcher4/Launcher;

    .line 1520
    iget v0, p0, Lcom/android/launcher4/Launcher$23;->val$resultCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1519
    :goto_0
    invoke-virtual {v1, v0, v8, v7}, Lcom/android/launcher4/Launcher;->exitSpringLoadedDragModeDelayed(ZZLjava/lang/Runnable;)V

    .line 1521
    return-void

    :cond_0
    move v0, v8

    .line 1520
    goto :goto_0
.end method
