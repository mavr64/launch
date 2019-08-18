.class public Lcom/android/launcher4/PackageChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageChangedReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 10
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 12
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 20
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher4/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 18
    invoke-static {}, Lcom/android/launcher4/LauncherAppState;->getInstance()Lcom/android/launcher4/LauncherAppState;

    move-result-object v0

    .line 19
    .local v0, "app":Lcom/android/launcher4/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher4/LauncherAppState;->getWidgetPreviewCacheDb()Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/launcher4/WidgetPreviewLoader;->removePackageFromDb(Lcom/android/launcher4/WidgetPreviewLoader$CacheDb;Ljava/lang/String;)V

    goto :goto_0
.end method
