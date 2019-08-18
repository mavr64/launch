.class Lcom/android/launcher4/LauncherModel$8;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher4/LauncherModel;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$cr:Landroid/content/ContentResolver;

.field private final synthetic val$items:Ljava/util/ArrayList;

.field private final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field private final synthetic val$valuesList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher4/LauncherModel$8;->val$items:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/launcher4/LauncherModel$8;->val$valuesList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/launcher4/LauncherModel$8;->val$stackTrace:[Ljava/lang/StackTraceElement;

    iput-object p4, p0, Lcom/android/launcher4/LauncherModel$8;->val$cr:Landroid/content/ContentResolver;

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 670
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 671
    .local v6, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v9, p0, Lcom/android/launcher4/LauncherModel$8;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 672
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 685
    :try_start_0
    iget-object v9, p0, Lcom/android/launcher4/LauncherModel$8;->val$cr:Landroid/content/ContentResolver;

    const-string v10, "com.android.launcher4.settings"

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    :goto_1
    return-void

    .line 673
    :cond_0
    iget-object v9, p0, Lcom/android/launcher4/LauncherModel$8;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher4/ItemInfo;

    .line 674
    .local v3, "item":Lcom/android/launcher4/ItemInfo;
    iget-wide v4, v3, Lcom/android/launcher4/ItemInfo;->id:J

    .line 676
    .local v4, "itemId":J
    const/4 v9, 0x0

    .line 675
    invoke-static {v4, v5, v9}, Lcom/android/launcher4/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v7

    .line 677
    .local v7, "uri":Landroid/net/Uri;
    iget-object v9, p0, Lcom/android/launcher4/LauncherModel$8;->val$valuesList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 679
    .local v8, "values":Landroid/content/ContentValues;
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 680
    invoke-virtual {v9, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    .line 679
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    iget-object v9, p0, Lcom/android/launcher4/LauncherModel$8;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v3, v4, v5, v9}, Lcom/android/launcher4/LauncherModel;->updateItemArrays(Lcom/android/launcher4/ItemInfo;J[Ljava/lang/StackTraceElement;)V

    .line 672
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 686
    .end local v3    # "item":Lcom/android/launcher4/ItemInfo;
    .end local v4    # "itemId":J
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 687
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
