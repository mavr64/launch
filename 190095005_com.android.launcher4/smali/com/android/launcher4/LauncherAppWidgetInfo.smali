.class Lcom/android/launcher4/LauncherAppWidgetInfo;
.super Lcom/android/launcher4/ItemInfo;
.source "LauncherAppWidgetInfo.java"


# static fields
.field static final NO_ID:I = -0x1


# instance fields
.field appWidgetId:I

.field hostView:Landroid/appwidget/AppWidgetHostView;

.field private mHasNotifiedInitialWidgetSizeChanged:Z

.field minHeight:I

.field minWidth:I

.field providerName:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(ILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "providerName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, -0x1

    .line 53
    invoke-direct {p0}, Lcom/android/launcher4/ItemInfo;-><init>()V

    .line 37
    iput v1, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->appWidgetId:I

    .line 42
    iput v1, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->minWidth:I

    .line 43
    iput v1, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->minHeight:I

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 54
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->itemType:I

    .line 55
    iput p1, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->appWidgetId:I

    .line 56
    iput-object p2, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 60
    iput v1, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->spanX:I

    .line 61
    iput v1, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->spanY:I

    .line 62
    return-void
.end method


# virtual methods
.method notifyWidgetSizeChanged(Lcom/android/launcher4/Launcher;)V
    .locals 3
    .param p1, "launcher"    # Lcom/android/launcher4/Launcher;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v1, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->spanX:I

    iget v2, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher4/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher4/Launcher;II)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    .line 87
    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/launcher4/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 67
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v0, "appWidgetProvider"

    iget-object v1, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method onBindAppWidget(Lcom/android/launcher4/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher4/Launcher;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/launcher4/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lcom/android/launcher4/Launcher;)V

    .line 79
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppWidget(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/launcher4/ItemInfo;->unbind()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher4/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 98
    return-void
.end method
