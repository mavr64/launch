.class Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;
.super Ljava/lang/Object;
.source "InstallShortcutReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/InstallShortcutReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingInstallShortcutInfo"
.end annotation


# instance fields
.field data:Landroid/content/Intent;

.field icon:Landroid/graphics/Bitmap;

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field launchIntent:Landroid/content/Intent;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "rawData"    # Landroid/content/Intent;
    .param p2, "shortcutName"    # Ljava/lang/String;
    .param p3, "shortcutIntent"    # Landroid/content/Intent;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;->data:Landroid/content/Intent;

    .line 205
    iput-object p2, p0, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;->name:Ljava/lang/String;

    .line 206
    iput-object p3, p0, Lcom/android/launcher4/InstallShortcutReceiver$PendingInstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    .line 207
    return-void
.end method
