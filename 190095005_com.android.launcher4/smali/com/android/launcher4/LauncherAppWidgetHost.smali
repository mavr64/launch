.class public Lcom/android/launcher4/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "LauncherAppWidgetHost.java"


# instance fields
.field mLauncher:Lcom/android/launcher4/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher4/Launcher;I)V
    .locals 0
    .param p1, "launcher"    # Lcom/android/launcher4/Launcher;
    .param p2, "hostId"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 35
    iput-object p1, p0, Lcom/android/launcher4/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 36
    return-void
.end method


# virtual methods
.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetId"    # I
    .param p3, "appWidget"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 41
    new-instance v0, Lcom/android/launcher4/LauncherAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/android/launcher4/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onProvidersChanged()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/launcher4/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher4/Launcher;

    iget-object v1, p0, Lcom/android/launcher4/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher4/Launcher;

    invoke-static {v1}, Lcom/android/launcher4/LauncherModel;->getSortedWidgetsAndShortcuts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher4/Launcher;->bindPackagesUpdated(Ljava/util/ArrayList;)V

    .line 54
    return-void
.end method

.method public stopListening()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 47
    invoke-virtual {p0}, Lcom/android/launcher4/LauncherAppWidgetHost;->clearViews()V

    .line 48
    return-void
.end method
