.class Lcom/android/launcher4/UninstallShortcutReceiver$PendingUninstallShortcutInfo;
.super Ljava/lang/Object;
.source "UninstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/UninstallShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingUninstallShortcutInfo"
.end annotation


# instance fields
.field data:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0
    .param p1, "rawData"    # Landroid/content/Intent;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/launcher4/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->data:Landroid/content/Intent;

    .line 48
    return-void
.end method
