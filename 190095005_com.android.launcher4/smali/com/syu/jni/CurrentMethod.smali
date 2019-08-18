.class public Lcom/syu/jni/CurrentMethod;
.super Ljava/lang/Object;
.source "CurrentMethod.java"


# static fields
.field static final bDebug:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gotoAdjustMode(Z)V
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 12
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_105_set_bl_adj(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    :goto_1
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static readBlLimit()[I
    .locals 2

    .prologue
    .line 27
    const/4 v1, 0x3

    new-array v0, v1, [I

    .line 31
    .local v0, "read":[I
    :try_start_0
    invoke-static {}, Lcom/syu/jni/ToolsJni;->cmd_109_get_bl_limit()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setBlLimit(II)V
    .locals 1
    .param p0, "min"    # I
    .param p1, "max"    # I

    .prologue
    .line 21
    :try_start_0
    invoke-static {p1, p0}, Lcom/syu/jni/ToolsJni;->cmd_110_set_bl_limit(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    goto :goto_0
.end method
