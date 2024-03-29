.class public Lcom/android/gallery3d/util/IntArray;
.super Ljava/lang/Object;
.source "IntArray.java"


# static fields
.field private static final INIT_CAPACITY:I = 0x8


# instance fields
.field private mData:[I

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/util/IntArray;->mData:[I

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/util/IntArray;->mSize:I

    .line 19
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x0

    .line 26
    iget-object v1, p0, Lcom/android/gallery3d/util/IntArray;->mData:[I

    array-length v1, v1

    iget v2, p0, Lcom/android/gallery3d/util/IntArray;->mSize:I

    if-ne v1, v2, :cond_0

    .line 27
    iget v1, p0, Lcom/android/gallery3d/util/IntArray;->mSize:I

    iget v2, p0, Lcom/android/gallery3d/util/IntArray;->mSize:I

    add-int/2addr v1, v2

    new-array v0, v1, [I

    .line 28
    .local v0, "temp":[I
    iget-object v1, p0, Lcom/android/gallery3d/util/IntArray;->mData:[I

    iget v2, p0, Lcom/android/gallery3d/util/IntArray;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    iput-object v0, p0, Lcom/android/gallery3d/util/IntArray;->mData:[I

    .line 31
    .end local v0    # "temp":[I
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/util/IntArray;->mData:[I

    iget v2, p0, Lcom/android/gallery3d/util/IntArray;->mSize:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/gallery3d/util/IntArray;->mSize:I

    aput p1, v1, v2

    .line 32
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/util/IntArray;->mSize:I

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/util/IntArray;->mData:[I

    array-length v0, v0

    if-eq v0, v1, :cond_0

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/gallery3d/util/IntArray;->mData:[I

    .line 59
    :cond_0
    return-void
.end method

.method public getInternalArray()[I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/gallery3d/util/IntArray;->mData:[I

    return-object v0
.end method

.method public removeLast()I
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lcom/android/gallery3d/util/IntArray;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/util/IntArray;->mSize:I

    .line 36
    iget-object v0, p0, Lcom/android/gallery3d/util/IntArray;->mData:[I

    iget v1, p0, Lcom/android/gallery3d/util/IntArray;->mSize:I

    aget v0, v0, v1

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/android/gallery3d/util/IntArray;->mSize:I

    return v0
.end method

.method public toArray([I)[I
    .locals 3
    .param p1, "result"    # [I

    .prologue
    const/4 v2, 0x0

    .line 45
    if-eqz p1, :cond_0

    array-length v0, p1

    iget v1, p0, Lcom/android/gallery3d/util/IntArray;->mSize:I

    if-ge v0, v1, :cond_1

    .line 46
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/util/IntArray;->mSize:I

    new-array p1, v0, [I

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/util/IntArray;->mData:[I

    iget v1, p0, Lcom/android/gallery3d/util/IntArray;->mSize:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    return-object p1
.end method
