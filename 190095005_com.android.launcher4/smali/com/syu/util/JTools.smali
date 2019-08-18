.class public Lcom/syu/util/JTools;
.super Ljava/lang/Object;
.source "JTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check([FI)Z
    .locals 1
    .param p0, "vals"    # [F
    .param p1, "len"    # I

    .prologue
    .line 20
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    array-length v0, p0

    if-ge v0, p1, :cond_1

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static check([II)Z
    .locals 1
    .param p0, "vals"    # [I
    .param p1, "len"    # I

    .prologue
    .line 6
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    array-length v0, p0

    if-ge v0, p1, :cond_1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static check([Ljava/lang/String;I)Z
    .locals 1
    .param p0, "vals"    # [Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 13
    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    array-length v0, p0

    if-ge v0, p1, :cond_1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "other"    # Ljava/lang/String;

    .prologue
    .line 31
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "other"    # Ljava/lang/String;

    .prologue
    .line 37
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 27
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
