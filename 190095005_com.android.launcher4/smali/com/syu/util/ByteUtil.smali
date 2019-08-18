.class public Lcom/syu/util/ByteUtil;
.super Ljava/lang/Object;
.source "ByteUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cutBytes(II[B)[B
    .locals 5
    .param p0, "start"    # I
    .param p1, "end"    # I
    .param p2, "src"    # [B

    .prologue
    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, "tmp":[B
    if-ltz p0, :cond_0

    array-length v4, p2

    if-le p1, v4, :cond_1

    :cond_0
    move-object v3, v2

    .line 51
    .end local v2    # "tmp":[B
    .local v3, "tmp":[B
    :goto_0
    return-object v3

    .line 44
    .end local v3    # "tmp":[B
    .restart local v2    # "tmp":[B
    :cond_1
    sub-int v1, p1, p0

    .line 45
    .local v1, "len":I
    if-lez v1, :cond_2

    .line 46
    new-array v2, v1, [B

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_3

    .end local v0    # "i":I
    :cond_2
    move-object v3, v2

    .line 51
    .end local v2    # "tmp":[B
    .restart local v3    # "tmp":[B
    goto :goto_0

    .line 48
    .end local v3    # "tmp":[B
    .restart local v0    # "i":I
    .restart local v2    # "tmp":[B
    :cond_3
    add-int v4, p0, v0

    aget-byte v4, p2, v4

    aput-byte v4, v2, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static indexOf([B[BI)I
    .locals 5
    .param p0, "tag"    # [B
    .param p1, "src"    # [B
    .param p2, "len"    # I

    .prologue
    .line 5
    array-length v2, p0

    .line 6
    .local v2, "tagLen":I
    array-length v3, p1

    if-gt p2, v3, :cond_0

    .line 7
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    sub-int v3, p2, v2

    add-int/lit8 v3, v3, 0x1

    if-lt v1, v3, :cond_2

    .line 18
    .end local v1    # "j":I
    :cond_0
    const/4 v1, -0x1

    :cond_1
    return v1

    .line 8
    .restart local v1    # "j":I
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_4

    .line 7
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_4
    add-int v3, v1, v0

    aget-byte v3, p1, v3

    aget-byte v4, p0, v0

    if-ne v3, v4, :cond_3

    .line 12
    add-int/lit8 v3, v2, -0x1

    if-eq v0, v3, :cond_1

    .line 8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static lastIndexOf([B[BI)I
    .locals 5
    .param p0, "tag"    # [B
    .param p1, "src"    # [B
    .param p2, "len"    # I

    .prologue
    .line 22
    array-length v3, p1

    if-gt p2, v3, :cond_0

    .line 23
    array-length v2, p0

    .line 24
    .local v2, "tagLen":I
    sub-int v1, p2, v2

    .local v1, "j":I
    :goto_0
    if-gez v1, :cond_2

    .line 36
    .end local v1    # "j":I
    .end local v2    # "tagLen":I
    :cond_0
    const/4 v1, -0x1

    :cond_1
    return v1

    .line 25
    .restart local v1    # "j":I
    .restart local v2    # "tagLen":I
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_4

    .line 24
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 26
    :cond_4
    add-int v3, v1, v0

    aget-byte v3, p1, v3

    aget-byte v4, p0, v0

    if-ne v3, v4, :cond_3

    .line 29
    add-int/lit8 v3, v2, -0x1

    if-eq v0, v3, :cond_1

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
