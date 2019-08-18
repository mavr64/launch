.class Lcom/android/launcher4/Launcher$74;
.super Ljava/lang/Thread;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/Launcher;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Landroid/appwidget/AppWidgetProviderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher4/Launcher;

.field private final synthetic val$appWidgetId:I


# direct methods
.method constructor <init>(Lcom/android/launcher4/Launcher;Ljava/lang/String;I)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/Launcher$74;->this$0:Lcom/android/launcher4/Launcher;

    iput p3, p0, Lcom/android/launcher4/Launcher$74;->val$appWidgetId:I

    .line 5075
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5077
    iget-object v0, p0, Lcom/android/launcher4/Launcher$74;->this$0:Lcom/android/launcher4/Launcher;

    invoke-static {v0}, Lcom/android/launcher4/Launcher;->access$99(Lcom/android/launcher4/Launcher;)Lcom/android/launcher4/LauncherAppWidgetHost;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/Launcher$74;->val$appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher4/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 5078
    return-void
.end method
