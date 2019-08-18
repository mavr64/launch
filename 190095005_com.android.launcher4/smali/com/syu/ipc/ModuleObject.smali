.class public Lcom/syu/ipc/ModuleObject;
.super Ljava/lang/Object;
.source "ModuleObject.java"


# instance fields
.field public flts:[F

.field public ints:[I

.field public strs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    iput-object v0, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    .line 19
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "strValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-array v0, v2, [I

    aput p1, v0, v1

    iput-object v0, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    .line 23
    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    iput-object v0, p0, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>([I)V
    .locals 0
    .param p1, "ints"    # [I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    .line 28
    return-void
.end method

.method public static checkInts(Lcom/syu/ipc/ModuleObject;I)Z
    .locals 1
    .param p0, "obj"    # Lcom/syu/ipc/ModuleObject;
    .param p1, "min"    # I

    .prologue
    .line 38
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    array-length v0, v0

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static get(Lcom/syu/ipc/ModuleObject;I)I
    .locals 2
    .param p0, "obj"    # Lcom/syu/ipc/ModuleObject;
    .param p1, "valueIfNotOk"    # I

    .prologue
    .line 45
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    const/4 v1, 0x0

    aget p1, v0, v1

    .line 48
    .end local p1    # "valueIfNotOk":I
    :cond_0
    return p1
.end method

.method public static get(Lcom/syu/ipc/RemoteModuleProxy;II)I
    .locals 3
    .param p0, "proxy"    # Lcom/syu/ipc/RemoteModuleProxy;
    .param p1, "getCode"    # I
    .param p2, "valueIfNotOk"    # I

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, p1, v1, v1, v1}, Lcom/syu/ipc/RemoteModuleProxy;->get(I[I[F[Ljava/lang/String;)Lcom/syu/ipc/ModuleObject;

    move-result-object v0

    .line 63
    .local v0, "obj":Lcom/syu/ipc/ModuleObject;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/syu/ipc/ModuleObject;->ints:[I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/syu/ipc/ModuleObject;->ints:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 64
    iget-object v1, v0, Lcom/syu/ipc/ModuleObject;->ints:[I

    const/4 v2, 0x0

    aget p2, v1, v2

    .line 66
    .end local p2    # "valueIfNotOk":I
    :cond_0
    return p2
.end method

.method public static get(Lcom/syu/ipc/ModuleObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Lcom/syu/ipc/ModuleObject;
    .param p1, "valueIfNotOk"    # Ljava/lang/String;

    .prologue
    .line 52
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object p1, v0, v1

    .line 55
    .end local p1    # "valueIfNotOk":Ljava/lang/String;
    :cond_0
    return-object p1
.end method
