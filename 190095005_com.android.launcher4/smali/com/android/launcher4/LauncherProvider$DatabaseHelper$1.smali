.class Lcom/android/launcher4/LauncherProvider$DatabaseHelper$1;
.super Ljava/lang/Object;
.source "LauncherProvider.java"

# interfaces
.implements Lcom/android/launcher4/LauncherProvider$ContentValuesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;


# direct methods
.method constructor <init>(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper$1;->this$1:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRow(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 370
    const-string v2, "container"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 371
    .local v0, "container":I
    const/16 v2, -0x64

    if-ne v0, v2, :cond_0

    .line 372
    const-string v2, "screen"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 373
    .local v1, "screen":I
    iget-object v2, p0, Lcom/android/launcher4/LauncherProvider$DatabaseHelper$1;->this$1:Lcom/android/launcher4/LauncherProvider$DatabaseHelper;

    int-to-long v4, v1

    invoke-static {v2, v4, v5}, Lcom/android/launcher4/LauncherProvider$DatabaseHelper;->access$0(Lcom/android/launcher4/LauncherProvider$DatabaseHelper;J)J

    move-result-wide v2

    long-to-int v1, v2

    .line 374
    const-string v2, "screen"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 376
    .end local v1    # "screen":I
    :cond_0
    return-void
.end method
