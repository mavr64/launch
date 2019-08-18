.class public Lcom/fyt/widget/AppListView;
.super Landroid/widget/ListView;
.source "AppListView.java"


# static fields
.field public static Adapter_AppList:Lcom/fyt/widget/LauncherList_Adapter;

.field public static Array_AppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static StringId_Action:[I

.field private static String_ActionPack:[[Ljava/lang/String;

.field public static View_AppList:Landroid/widget/ListView;

.field private static context:Landroid/content/Context;

.field public static hide_num:I


# instance fields
.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v1, 0x9

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 44
    sput v4, Lcom/fyt/widget/AppListView;->hide_num:I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/fyt/widget/AppListView;->Array_AppList:Ljava/util/ArrayList;

    .line 49
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fyt/widget/AppListView;->StringId_Action:[I

    .line 61
    new-array v0, v1, [[Ljava/lang/String;

    .line 62
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.syu.dvr"

    aput-object v2, v1, v4

    const-string v2, "com.syu.dvr.activity.MainActivity"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    .line 63
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.syu.bt"

    aput-object v2, v1, v4

    const-string v2, "com.syu.bt.BtAct"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    .line 64
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "com.android.settings"

    aput-object v2, v1, v4

    const-string v2, "com.android.settings.Settings"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    .line 65
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.syu.filemanager"

    aput-object v3, v2, v4

    const-string v3, "com.syu.filemanager.FileManagerActivity"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 66
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.syu.video"

    aput-object v3, v2, v4

    const-string v3, "com.syu.video.main.VideoListActivity"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 67
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.syu.radio"

    aput-object v3, v2, v4

    const-string v3, "com.syu.radio.Launch"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 68
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.syu.music"

    aput-object v3, v2, v4

    const-string v3, "com.syu.music.MAct"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 69
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.syu.settings"

    aput-object v3, v2, v4

    const-string v3, "com.syu.settings.MainActivity"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 70
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.syu.onekeynavi"

    aput-object v3, v2, v4

    const-string v3, "com.syu.onekeynavi.MainActivity"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    .line 61
    sput-object v0, Lcom/fyt/widget/AppListView;->String_ActionPack:[[Ljava/lang/String;

    .line 72
    return-void

    .line 49
    nop

    :array_0
    .array-data 4
        0x7f0c006b
        0x7f0c0078
        0x7f0c008a
        0x7f0c0092
        0x7f0c0074
        0x7f0c0076
        0x7f0c0077
        0x7f0c006e
        0x7f0c008b
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 240
    new-instance v0, Lcom/fyt/widget/AppListView$1;

    invoke-direct {v0, p0}, Lcom/fyt/widget/AppListView$1;-><init>(Lcom/fyt/widget/AppListView;)V

    iput-object v0, p0, Lcom/fyt/widget/AppListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 92
    sput-object p1, Lcom/fyt/widget/AppListView;->context:Landroid/content/Context;

    .line 93
    invoke-direct {p0, p1}, Lcom/fyt/widget/AppListView;->init(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 240
    new-instance v0, Lcom/fyt/widget/AppListView$1;

    invoke-direct {v0, p0}, Lcom/fyt/widget/AppListView$1;-><init>(Lcom/fyt/widget/AppListView;)V

    iput-object v0, p0, Lcom/fyt/widget/AppListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 84
    sput-object p1, Lcom/fyt/widget/AppListView;->context:Landroid/content/Context;

    .line 85
    invoke-direct {p0, p1}, Lcom/fyt/widget/AppListView;->init(Landroid/content/Context;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;
    .param p3, "arg2"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 240
    new-instance v0, Lcom/fyt/widget/AppListView$1;

    invoke-direct {v0, p0}, Lcom/fyt/widget/AppListView$1;-><init>(Lcom/fyt/widget/AppListView;)V

    iput-object v0, p0, Lcom/fyt/widget/AppListView;->receiver:Landroid/content/BroadcastReceiver;

    .line 76
    sput-object p1, Lcom/fyt/widget/AppListView;->context:Landroid/content/Context;

    .line 77
    invoke-direct {p0, p1}, Lcom/fyt/widget/AppListView;->init(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method static ItemClick(I)V
    .locals 7
    .param p0, "arg"    # I

    .prologue
    const/16 v6, 0x18

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 174
    sget-object v2, Lcom/fyt/widget/AppListView;->Adapter_AppList:Lcom/fyt/widget/LauncherList_Adapter;

    invoke-virtual {v2, p0}, Lcom/fyt/widget/LauncherList_Adapter;->setfocus(I)V

    .line 175
    sget-object v2, Lcom/fyt/widget/AppListView;->Adapter_AppList:Lcom/fyt/widget/LauncherList_Adapter;

    invoke-virtual {v2}, Lcom/fyt/widget/LauncherList_Adapter;->notifyDataSetChanged()V

    .line 176
    const/16 v2, 0x8

    if-ne p0, v2, :cond_4

    .line 177
    sget-boolean v2, Lshare/Config;->EXISTAMPAUTO:Z

    if-eqz v2, :cond_3

    .line 178
    const-string v2, "persist.sys.navi.packagename"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "str":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.autonavi.amapauto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    :cond_0
    const-string v2, "persist.sys.navi.packagename"

    const-string v3, "com.autonavi.amapauto"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.autonavi.amapauto"

    const-string v4, "com.autonavi.auto.remote.fill.UsbFillActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 183
    invoke-static {v0}, Lcom/fyt/widget/AppListView;->startActivitySafely(Landroid/content/Intent;)V

    .line 203
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 185
    .restart local v1    # "str":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/fyt/widget/AppListView;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/car/CarStates;->mTools:Lcom/syu/remote/RemoteTools;

    .line 187
    new-array v3, v5, [I

    aput v4, v3, v4

    .line 185
    invoke-virtual {v2, v4, v6, v3}, Lcom/syu/remote/RemoteTools;->sendInt(II[I)V

    goto :goto_0

    .line 192
    .end local v1    # "str":Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/fyt/widget/AppListView;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/syu/car/CarStates;->getCar(Landroid/content/Context;)Lcom/syu/car/CarStates;

    move-result-object v2

    iget-object v2, v2, Lcom/syu/car/CarStates;->mTools:Lcom/syu/remote/RemoteTools;

    .line 194
    new-array v3, v5, [I

    aput v4, v3, v4

    .line 192
    invoke-virtual {v2, v4, v6, v3}, Lcom/syu/remote/RemoteTools;->sendInt(II[I)V

    goto :goto_0

    .line 196
    :cond_4
    sget-object v2, Lcom/fyt/widget/AppListView;->String_ActionPack:[[Ljava/lang/String;

    array-length v2, v2

    if-ge p0, v2, :cond_1

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 200
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/fyt/widget/AppListView;->String_ActionPack:[[Ljava/lang/String;

    aget-object v3, v3, p0

    aget-object v3, v3, v4

    sget-object v4, Lcom/fyt/widget/AppListView;->String_ActionPack:[[Ljava/lang/String;

    aget-object v4, v4, p0

    aget-object v4, v4, v5

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 201
    invoke-static {v0}, Lcom/fyt/widget/AppListView;->startActivitySafely(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-static {}, Lshare/ResValue;->getInstance()Lshare/ResValue;

    move-result-object v1

    iget v1, v1, Lshare/ResValue;->Collect_AppList:I

    invoke-virtual {p0, v1}, Lcom/fyt/widget/AppListView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    sput-object v1, Lcom/fyt/widget/AppListView;->View_AppList:Landroid/widget/ListView;

    .line 100
    const-string v1, "adapter"

    const-string v2, "  ***  init  *** "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/fyt/widget/AppListView;->StringId_Action:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 105
    new-instance v1, Lcom/fyt/widget/LauncherList_Adapter;

    sget-object v2, Lcom/fyt/widget/AppListView;->Array_AppList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, p1}, Lcom/fyt/widget/LauncherList_Adapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    sput-object v1, Lcom/fyt/widget/AppListView;->Adapter_AppList:Lcom/fyt/widget/LauncherList_Adapter;

    .line 106
    sget-object v1, Lcom/fyt/widget/AppListView;->View_AppList:Landroid/widget/ListView;

    sget-object v2, Lcom/fyt/widget/AppListView;->Adapter_AppList:Lcom/fyt/widget/LauncherList_Adapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    sget-object v1, Lcom/fyt/widget/AppListView;->View_AppList:Landroid/widget/ListView;

    new-instance v2, Lcom/fyt/widget/AppListView$2;

    invoke-direct {v2, p0}, Lcom/fyt/widget/AppListView$2;-><init>(Lcom/fyt/widget/AppListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    sget-object v1, Lcom/fyt/widget/AppListView;->View_AppList:Landroid/widget/ListView;

    new-instance v2, Lcom/fyt/widget/AppListView$3;

    invoke-direct {v2, p0}, Lcom/fyt/widget/AppListView$3;-><init>(Lcom/fyt/widget/AppListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 133
    sget-object v1, Lcom/fyt/widget/AppListView;->View_AppList:Landroid/widget/ListView;

    new-instance v2, Lcom/fyt/widget/AppListView$4;

    invoke-direct {v2, p0}, Lcom/fyt/widget/AppListView$4;-><init>(Lcom/fyt/widget/AppListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 171
    return-void

    .line 102
    :cond_0
    const-string v1, "adapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " appname = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/fyt/widget/AppListView;->StringId_Action:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " i = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v1, Lcom/fyt/widget/AppListView;->Array_AppList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/fyt/widget/AppListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/fyt/widget/AppListView;->StringId_Action:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static startActivitySafely(Landroid/content/Intent;)V
    .locals 9
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const v8, 0x7f0c000c

    .line 206
    const/4 v7, 0x0

    .line 208
    .local v7, "success":Z
    if-nez p0, :cond_0

    .line 209
    sget-object v0, Lcom/fyt/widget/AppListView;->context:Landroid/content/Context;

    .line 210
    const/4 v1, 0x1

    .line 209
    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 212
    :cond_0
    invoke-static {}, Lcom/syu/utils/W3Utils;->getUtils()Lcom/syu/utils/W3Utils;

    move-result-object v0

    const-string v2, "\u63d0\u793a"

    .line 213
    const-string v3, "\u68c0\u67e5\u5230\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\u6216\u8005\u5361\u5df2\u88ab\u505c\u7528,\u662f\u5426\u524d\u5f80\u5145\u503c\u754c\u9762\u8fdb\u884c\u5145\u503c\u6216\u53d8\u66f4\u5957\u9910"

    const-string v4, "\u786e\u5b9a"

    const-string v5, "\u53d6\u6d88"

    move-object v1, p0

    .line 212
    invoke-virtual/range {v0 .. v5}, Lcom/syu/utils/W3Utils;->check(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :try_start_0
    sget-object v0, Lcom/fyt/widget/AppListView;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v6

    .line 218
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    sget-object v0, Lcom/fyt/widget/AppListView;->context:Landroid/content/Context;

    .line 219
    const/4 v1, 0x0

    .line 218
    invoke-static {v0, v8, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 229
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 230
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/fyt/widget/AppListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/fyt/widget/AppListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 236
    invoke-virtual {p0}, Lcom/fyt/widget/AppListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fyt/widget/AppListView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 237
    return-void
.end method

.method public updateStr()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "hy"

    const-string v1, "updateStr"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object v0, Lcom/fyt/widget/AppListView;->Adapter_AppList:Lcom/fyt/widget/LauncherList_Adapter;

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/fyt/widget/AppListView;->Adapter_AppList:Lcom/fyt/widget/LauncherList_Adapter;

    invoke-virtual {v0}, Lcom/fyt/widget/LauncherList_Adapter;->notifyDataSetChanged()V

    .line 254
    :cond_0
    return-void
.end method
