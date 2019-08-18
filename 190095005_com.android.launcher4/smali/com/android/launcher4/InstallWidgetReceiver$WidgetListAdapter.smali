.class public Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;
.super Ljava/lang/Object;
.source "InstallWidgetReceiver.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher4/InstallWidgetReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetListAdapter"
.end annotation


# instance fields
.field private mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher4/InstallWidgetReceiver$WidgetMimeTypeHandlerData;",
            ">;"
        }
    .end annotation
.end field

.field private mClipData:Landroid/content/ClipData;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/android/launcher4/Launcher;

.field private mMimeType:Ljava/lang/String;

.field private mTargetLayoutPos:[I

.field private mTargetLayoutScreen:I


# direct methods
.method public constructor <init>(Lcom/android/launcher4/Launcher;Ljava/lang/String;Landroid/content/ClipData;Ljava/util/List;I[I)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher4/Launcher;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/content/ClipData;
    .param p5, "targetScreen"    # I
    .param p6, "targetPos"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher4/Launcher;",
            "Ljava/lang/String;",
            "Landroid/content/ClipData;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher4/InstallWidgetReceiver$WidgetMimeTypeHandlerData;",
            ">;I[I)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher4/InstallWidgetReceiver$WidgetMimeTypeHandlerData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mLauncher:Lcom/android/launcher4/Launcher;

    .line 86
    iput-object p2, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mMimeType:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mClipData:Landroid/content/ClipData;

    .line 88
    iput-object p4, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mActivities:Ljava/util/List;

    .line 89
    iput p5, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mTargetLayoutScreen:I

    .line 90
    iput-object p6, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mTargetLayoutPos:[I

    .line 91
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 113
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 123
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 124
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 127
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v11, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v11, :cond_0

    .line 128
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    iput-object v11, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 132
    :cond_0
    if-nez p2, :cond_1

    .line 133
    iget-object v11, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v12, 0x7f040019

    .line 134
    const/4 v13, 0x0

    .line 133
    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 137
    :cond_1
    iget-object v11, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mActivities:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher4/InstallWidgetReceiver$WidgetMimeTypeHandlerData;

    .line 138
    .local v4, "data":Lcom/android/launcher4/InstallWidgetReceiver$WidgetMimeTypeHandlerData;
    iget-object v7, v4, Lcom/android/launcher4/InstallWidgetReceiver$WidgetMimeTypeHandlerData;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 139
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v9, v4, Lcom/android/launcher4/InstallWidgetReceiver$WidgetMimeTypeHandlerData;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 142
    .local v9, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual {v7, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 143
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    const v11, 0x7f110048

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 144
    .local v5, "i":Landroid/widget/ImageView;
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    invoke-virtual {v7, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 148
    .local v1, "component":Ljava/lang/CharSequence;
    const/4 v11, 0x2

    new-array v10, v11, [I

    .line 149
    .local v10, "widgetSpan":[I
    iget v11, v9, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v12, v9, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {v11, v12, v10}, Lcom/android/launcher4/CellLayout;->rectToCell(II[I)[I

    .line 150
    const v11, 0x7f110049

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 151
    .local v8, "t":Landroid/widget/TextView;
    const v11, 0x7f0c0013

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 152
    aput-object v1, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aget v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x1

    aget v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 151
    invoke-virtual {v2, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 184
    iget-object v0, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mActivities:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetMimeTypeHandlerData;

    iget-object v9, v0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetMimeTypeHandlerData;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 186
    .local v9, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v1, Lcom/android/launcher4/PendingAddWidgetInfo;

    iget-object v0, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mMimeType:Ljava/lang/String;

    .line 187
    iget-object v2, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mClipData:Landroid/content/ClipData;

    .line 186
    invoke-direct {v1, v9, v0, v2}, Lcom/android/launcher4/PendingAddWidgetInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 188
    .local v1, "createInfo":Lcom/android/launcher4/PendingAddWidgetInfo;
    iget-object v0, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mLauncher:Lcom/android/launcher4/Launcher;

    const-wide/16 v2, -0x64

    .line 189
    iget v4, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mTargetLayoutScreen:I

    int-to-long v4, v4

    iget-object v8, p0, Lcom/android/launcher4/InstallWidgetReceiver$WidgetListAdapter;->mTargetLayoutPos:[I

    move-object v7, v6

    .line 188
    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher4/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher4/PendingAddWidgetInfo;JJ[I[I[I)V

    .line 190
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 95
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 99
    return-void
.end method
