.class public interface abstract Lcom/android/launcher4/LauncherModel$Callbacks;
.super Ljava/lang/Object;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public abstract bindAddScreens(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAllApplications(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppWidget(Lcom/android/launcher4/LauncherAppWidgetInfo;)V
.end method

.method public abstract bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindAppsUpdated(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindComponentsRemoved(Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/AppInfo;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract bindFolders(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher4/FolderInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindItems(Ljava/util/ArrayList;IIZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ItemInfo;",
            ">;IIZ)V"
        }
    .end annotation
.end method

.method public abstract bindPackagesUpdated(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindScreens(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract bindSearchablesChanged()V
.end method

.method public abstract dumpLogsToLocalData()V
.end method

.method public abstract finishBindingItems(Z)V
.end method

.method public abstract getCurrentWorkspaceScreen()I
.end method

.method public abstract isAllAppsButtonRank(I)Z
.end method

.method public abstract onPageBoundSynchronously(I)V
.end method

.method public abstract setLoadOnResume()Z
.end method

.method public abstract startBinding()V
.end method
