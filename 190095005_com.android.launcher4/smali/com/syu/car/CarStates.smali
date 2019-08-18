.class public Lcom/syu/car/CarStates;
.super Ljava/lang/Object;
.source "CarStates.java"


# static fields
.field public static mAccState:I

.field public static mAppID:I

.field public static mCanbusType:I

.field static mCar:Lcom/syu/car/CarStates;

.field public static mExistCarRadio:I

.field public static mGpsAngle:I

.field public static mSmallLight:I


# instance fields
.field final BT_LOOK_CODE:[I

.field final CANBUS_LOOK_CODE:[I

.field final MAIN_LOOK_CODE:[I

.field final RADIO_LOOK_CODE:[I

.field final SOUND_LOOK_CODE:[I

.field final TV_LOOK_CODE:[I

.field mContext:Landroid/content/Context;

.field mHideApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNaviPkg:Ljava/lang/String;

.field mShowApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTools:Lcom/syu/remote/RemoteTools;

.field mTvStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    sput v0, Lcom/syu/car/CarStates;->mAppID:I

    .line 53
    sput v0, Lcom/syu/car/CarStates;->mAccState:I

    .line 54
    sput v0, Lcom/syu/car/CarStates;->mSmallLight:I

    .line 56
    sput v0, Lcom/syu/car/CarStates;->mExistCarRadio:I

    .line 57
    sput v0, Lcom/syu/car/CarStates;->mGpsAngle:I

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 25
    const/16 v1, 0x1c

    aput v1, v0, v3

    const/16 v1, 0x27

    aput v1, v0, v4

    const/16 v1, 0x32

    aput v1, v0, v2

    .line 26
    aput v6, v0, v6

    iput-object v0, p0, Lcom/syu/car/CarStates;->MAIN_LOOK_CODE:[I

    .line 29
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/syu/car/CarStates;->TV_LOOK_CODE:[I

    .line 33
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 34
    iput-object v0, p0, Lcom/syu/car/CarStates;->CANBUS_LOOK_CODE:[I

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 38
    aput v3, v0, v3

    aput v4, v0, v4

    .line 39
    const/16 v1, 0x14

    aput v1, v0, v2

    const/16 v1, 0x17

    aput v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x15

    aput v2, v0, v1

    iput-object v0, p0, Lcom/syu/car/CarStates;->RADIO_LOOK_CODE:[I

    .line 42
    new-array v0, v3, [I

    .line 43
    const/4 v1, 0x7

    aput v1, v0, v5

    iput-object v0, p0, Lcom/syu/car/CarStates;->BT_LOOK_CODE:[I

    .line 47
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    .line 49
    iput-object v0, p0, Lcom/syu/car/CarStates;->SOUND_LOOK_CODE:[I

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/syu/car/CarStates;->mNaviPkg:Ljava/lang/String;

    .line 66
    iput v5, p0, Lcom/syu/car/CarStates;->mTvStyle:I

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/car/CarStates;->mHideApps:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/car/CarStates;->mShowApps:Ljava/util/List;

    .line 81
    iput-object p1, p0, Lcom/syu/car/CarStates;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Lcom/syu/remote/RemoteTools;

    iget-object v1, p0, Lcom/syu/car/CarStates;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/syu/remote/RemoteTools;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/syu/car/CarStates;->mTools:Lcom/syu/remote/RemoteTools;

    .line 83
    iget-object v0, p0, Lcom/syu/car/CarStates;->mTools:Lcom/syu/remote/RemoteTools;

    invoke-virtual {p0, v0}, Lcom/syu/car/CarStates;->setupMainModule(Lcom/syu/remote/RemoteTools;)V

    .line 84
    iget-object v0, p0, Lcom/syu/car/CarStates;->mTools:Lcom/syu/remote/RemoteTools;

    invoke-virtual {p0, v0}, Lcom/syu/car/CarStates;->setupTvModule(Lcom/syu/remote/RemoteTools;)V

    .line 85
    iget-object v0, p0, Lcom/syu/car/CarStates;->mTools:Lcom/syu/remote/RemoteTools;

    invoke-virtual {p0, v0}, Lcom/syu/car/CarStates;->setupcanbusModule(Lcom/syu/remote/RemoteTools;)V

    .line 86
    iget-object v0, p0, Lcom/syu/car/CarStates;->mTools:Lcom/syu/remote/RemoteTools;

    invoke-virtual {p0, v0}, Lcom/syu/car/CarStates;->setupRadioModule(Lcom/syu/remote/RemoteTools;)V

    .line 87
    iget-object v0, p0, Lcom/syu/car/CarStates;->mTools:Lcom/syu/remote/RemoteTools;

    invoke-virtual {p0, v0}, Lcom/syu/car/CarStates;->setupBtModule(Lcom/syu/remote/RemoteTools;)V

    .line 88
    iget-object v0, p0, Lcom/syu/car/CarStates;->mTools:Lcom/syu/remote/RemoteTools;

    invoke-virtual {v0}, Lcom/syu/remote/RemoteTools;->bind()V

    .line 89
    return-void

    .line 33
    :array_0
    .array-data 4
        0x3e8
        0x3f8
        0x409
    .end array-data

    .line 47
    :array_1
    .array-data 4
        0x2
        0x3
    .end array-data
.end method

.method public static getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget-object v0, Lcom/syu/car/CarStates;->mCar:Lcom/syu/car/CarStates;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/syu/car/CarStates;

    invoke-direct {v0, p0}, Lcom/syu/car/CarStates;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/syu/car/CarStates;->mCar:Lcom/syu/car/CarStates;

    .line 77
    :cond_0
    sget-object v0, Lcom/syu/car/CarStates;->mCar:Lcom/syu/car/CarStates;

    return-object v0
.end method


# virtual methods
.method public addHideApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/syu/car/CarStates;->mHideApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/syu/car/CarStates;->mHideApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    return-void
.end method

.method public addShowApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/syu/car/CarStates;->mShowApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/syu/car/CarStates;->mShowApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    return-void
.end method

.method public getHideApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/syu/car/CarStates;->mHideApps:Ljava/util/List;

    return-object v0
.end method

.method public getShowApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/syu/car/CarStates;->mShowApps:Ljava/util/List;

    return-object v0
.end method

.method public getTools()Lcom/syu/remote/RemoteTools;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/syu/car/CarStates;->mTools:Lcom/syu/remote/RemoteTools;

    return-object v0
.end method

.method public getmNaviPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/syu/car/CarStates;->mNaviPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getmTvStyle()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/syu/car/CarStates;->mTvStyle:I

    return v0
.end method

.method public removeHideApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/syu/car/CarStates;->mHideApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/syu/car/CarStates;->mHideApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    return-void
.end method

.method public removeShowApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/syu/car/CarStates;->mShowApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/syu/car/CarStates;->mShowApps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 203
    :cond_0
    return-void
.end method

.method public setTvStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 158
    iput p1, p0, Lcom/syu/car/CarStates;->mTvStyle:I

    .line 159
    return-void
.end method

.method public setmNaviPkg(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNaviPkg"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/syu/car/CarStates;->mNaviPkg:Ljava/lang/String;

    .line 167
    return-void
.end method

.method setupBtModule(Lcom/syu/remote/RemoteTools;)V
    .locals 2
    .param p1, "tools"    # Lcom/syu/remote/RemoteTools;

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/syu/car/CarStates;->BT_LOOK_CODE:[I

    invoke-virtual {p1, v0, v1}, Lcom/syu/remote/RemoteTools;->enableModule(I[I)V

    goto :goto_0
.end method

.method setupMainModule(Lcom/syu/remote/RemoteTools;)V
    .locals 3
    .param p1, "tools"    # Lcom/syu/remote/RemoteTools;

    .prologue
    const/4 v2, 0x0

    .line 92
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/syu/car/CarStates;->MAIN_LOOK_CODE:[I

    invoke-virtual {p1, v2, v0}, Lcom/syu/remote/RemoteTools;->enableModule(I[I)V

    .line 94
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/syu/car/CarStates;->SOUND_LOOK_CODE:[I

    invoke-virtual {p1, v0, v1}, Lcom/syu/remote/RemoteTools;->enableModule(I[I)V

    .line 96
    new-instance v0, Lcom/syu/car/CarStates$1;

    invoke-direct {v0, p0}, Lcom/syu/car/CarStates$1;-><init>(Lcom/syu/car/CarStates;)V

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p1, v2, v0, v1}, Lcom/syu/remote/RemoteTools;->addRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;[I)V

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x1c
        0x27
        0x32
        0x4
    .end array-data
.end method

.method setupRadioModule(Lcom/syu/remote/RemoteTools;)V
    .locals 2
    .param p1, "tools"    # Lcom/syu/remote/RemoteTools;

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/syu/car/CarStates;->RADIO_LOOK_CODE:[I

    invoke-virtual {p1, v0, v1}, Lcom/syu/remote/RemoteTools;->enableModule(I[I)V

    goto :goto_0
.end method

.method setupTvModule(Lcom/syu/remote/RemoteTools;)V
    .locals 2
    .param p1, "tools"    # Lcom/syu/remote/RemoteTools;

    .prologue
    .line 145
    if-nez p1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/syu/car/CarStates;->TV_LOOK_CODE:[I

    invoke-virtual {p1, v0, v1}, Lcom/syu/remote/RemoteTools;->enableModule(I[I)V

    goto :goto_0
.end method

.method setupcanbusModule(Lcom/syu/remote/RemoteTools;)V
    .locals 3
    .param p1, "tools"    # Lcom/syu/remote/RemoteTools;

    .prologue
    const/4 v2, 0x7

    .line 121
    if-nez p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/syu/car/CarStates;->CANBUS_LOOK_CODE:[I

    invoke-virtual {p1, v2, v0}, Lcom/syu/remote/RemoteTools;->enableModule(I[I)V

    .line 126
    new-instance v0, Lcom/syu/car/CarStates$2;

    invoke-direct {v0, p0}, Lcom/syu/car/CarStates$2;-><init>(Lcom/syu/car/CarStates;)V

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p1, v2, v0, v1}, Lcom/syu/remote/RemoteTools;->addRefreshLisenter(ILcom/syu/remote/Callback$OnRefreshLisenter;[I)V

    goto :goto_0

    :array_0
    .array-data 4
        0x3e8
        0x3f8
        0x409
    .end array-data
.end method
