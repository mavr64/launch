.class Lcom/android/launcher4/LauncherModel$7;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel;->updateItemInDatabaseHelper(Landroid/content/Context;Landroid/content/ContentValues;Lcom/android/launcher4/ItemInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cr:Landroid/content/ContentResolver;

.field private final synthetic val$item:Lcom/android/launcher4/ItemInfo;

.field private final synthetic val$itemId:J

.field private final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field private final synthetic val$uri:Landroid/net/Uri;

.field private final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/android/launcher4/ItemInfo;J[Ljava/lang/StackTraceElement;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$7;->val$cr:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$7;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/launcher4/LauncherModel$7;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/launcher4/LauncherModel$7;->val$item:Lcom/android/launcher4/ItemInfo;

    iput-wide p5, p0, Lcom/android/launcher4/LauncherModel$7;->val$itemId:J

    iput-object p7, p0, Lcom/android/launcher4/LauncherModel$7;->val$stackTrace:[Ljava/lang/StackTraceElement;

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 655
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$7;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$7;->val$uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/launcher4/LauncherModel$7;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/android/launcher4/LauncherModel$7;->val$item:Lcom/android/launcher4/ItemInfo;

    iget-wide v2, p0, Lcom/android/launcher4/LauncherModel$7;->val$itemId:J

    iget-object v1, p0, Lcom/android/launcher4/LauncherModel$7;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v0, v2, v3, v1}, Lcom/android/launcher4/LauncherModel;->updateItemArrays(Lcom/android/launcher4/ItemInfo;J[Ljava/lang/StackTraceElement;)V

    .line 657
    return-void
.end method
