.class Lcom/android/launcher4/DeleteDropTarget$3;
.super Ljava/lang/Thread;
.source "DeleteDropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/DeleteDropTarget;->completeDrop(Lcom/android/launcher4/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/DeleteDropTarget;

.field private final synthetic val$appWidgetHost:Lcom/android/launcher4/LauncherAppWidgetHost;

.field private final synthetic val$launcherAppWidgetInfo:Lcom/android/launcher4/LauncherAppWidgetInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher4/DeleteDropTarget;Ljava/lang/String;Lcom/android/launcher4/LauncherAppWidgetHost;Lcom/android/launcher4/LauncherAppWidgetInfo;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/DeleteDropTarget$3;->this$0:Lcom/android/launcher4/DeleteDropTarget;

    iput-object p3, p0, Lcom/android/launcher4/DeleteDropTarget$3;->val$appWidgetHost:Lcom/android/launcher4/LauncherAppWidgetHost;

    iput-object p4, p0, Lcom/android/launcher4/DeleteDropTarget$3;->val$launcherAppWidgetInfo:Lcom/android/launcher4/LauncherAppWidgetInfo;

    .line 373
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/launcher4/DeleteDropTarget$3;->val$appWidgetHost:Lcom/android/launcher4/LauncherAppWidgetHost;

    iget-object v1, p0, Lcom/android/launcher4/DeleteDropTarget$3;->val$launcherAppWidgetInfo:Lcom/android/launcher4/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher4/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher4/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 376
    return-void
.end method
