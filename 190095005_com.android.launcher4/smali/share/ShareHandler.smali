.class public Lshare/ShareHandler;
.super Ljava/lang/Object;
.source "ShareHandler.java"


# static fields
.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "content://com.syu.ms.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lshare/ShareHandler;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/content/ContentResolver;II)I
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "key"    # I
    .param p2, "valueIfNotFound"    # I

    .prologue
    const/4 v2, 0x0

    .line 15
    move v8, p2

    .line 16
    .local v8, "result":I
    if-nez p0, :cond_0

    move v9, v8

    .line 29
    .end local v8    # "result":I
    .local v9, "result":I
    :goto_0
    return v9

    .line 18
    .end local v9    # "result":I
    .restart local v8    # "result":I
    :cond_0
    sget-object v1, Lshare/ShareHandler;->URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 19
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_1

    move v9, v8

    .line 20
    .end local v8    # "result":I
    .restart local v9    # "result":I
    goto :goto_0

    .line 22
    .end local v9    # "result":I
    .restart local v8    # "result":I
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 28
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v9, v8

    .line 29
    .end local v8    # "result":I
    .restart local v9    # "result":I
    goto :goto_0

    .line 25
    .end local v9    # "result":I
    .restart local v8    # "result":I
    :catch_0
    move-exception v7

    .line 26
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
