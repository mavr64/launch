.class Lcom/android/launcher4/ShortcutInfo;
.super Lcom/android/launcher4/ItemInfo;
.source "ShortcutInfo.java"


# instance fields
.field customIcon:Z

.field firstInstallTime:J

.field flags:I

.field iconResource:Landroid/content/Intent$ShortcutIconResource;

.field intent:Landroid/content/Intent;

.field private mIcon:Landroid/graphics/Bitmap;

.field usingFallbackIcon:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/launcher4/ItemInfo;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher4/ShortcutInfo;->flags:I

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher4/ShortcutInfo;->itemType:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher4/ShortcutInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher4/ShortcutInfo;

    .prologue
    .line 76
    invoke-direct {p0, p2}, Lcom/android/launcher4/ItemInfo;-><init>(Lcom/android/launcher4/ItemInfo;)V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher4/ShortcutInfo;->flags:I

    .line 77
    iget-object v0, p2, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 78
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p2, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 79
    iget-object v0, p2, Lcom/android/launcher4/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_0

    .line 80
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 81
    iget-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p2, Lcom/android/launcher4/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p2, Lcom/android/launcher4/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 84
    :cond_0
    iget-object v0, p2, Lcom/android/launcher4/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 85
    iget-boolean v0, p2, Lcom/android/launcher4/ShortcutInfo;->customIcon:Z

    iput-boolean v0, p0, Lcom/android/launcher4/ShortcutInfo;->customIcon:Z

    .line 87
    iget-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher4/ShortcutInfo;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/android/launcher4/ShortcutInfo;->initFlagsAndFirstInstallTime(Landroid/content/pm/PackageInfo;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher4/AppInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/launcher4/AppInfo;

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p1}, Lcom/android/launcher4/ItemInfo;-><init>(Lcom/android/launcher4/ItemInfo;)V

    .line 65
    iput v2, p0, Lcom/android/launcher4/ShortcutInfo;->flags:I

    .line 93
    iget-object v0, p1, Lcom/android/launcher4/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 94
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/launcher4/AppInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 95
    iput-boolean v2, p0, Lcom/android/launcher4/ShortcutInfo;->customIcon:Z

    .line 96
    iget v0, p1, Lcom/android/launcher4/AppInfo;->flags:I

    iput v0, p0, Lcom/android/launcher4/ShortcutInfo;->flags:I

    .line 97
    iget-wide v0, p1, Lcom/android/launcher4/AppInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/launcher4/ShortcutInfo;->firstInstallTime:J

    .line 98
    return-void
.end method

.method public static dumpShortcutInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher4/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher4/ShortcutInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    return-void

    .line 189
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher4/ShortcutInfo;

    .line 190
    .local v0, "info":Lcom/android/launcher4/ShortcutInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   title=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " icon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher4/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 191
    const-string v3, " customIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/launcher4/ShortcutInfo;->customIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 104
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ShortcutInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PackageManager.getPackageInfo failed for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getIcon(Lcom/android/launcher4/IconCache;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "iconCache"    # Lcom/android/launcher4/IconCache;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/launcher4/ShortcutInfo;->updateIcon(Lcom/android/launcher4/IconCache;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method initFlagsAndFirstInstallTime(Landroid/content/pm/PackageInfo;)V
    .locals 2
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 112
    invoke-static {p1}, Lcom/android/launcher4/AppInfo;->initFlags(Landroid/content/pm/PackageInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher4/ShortcutInfo;->flags:I

    .line 113
    invoke-static {p1}, Lcom/android/launcher4/AppInfo;->initFirstInstallTime(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher4/ShortcutInfo;->firstInstallTime:J

    .line 114
    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 151
    invoke-super {p0, p1}, Lcom/android/launcher4/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 153
    iget-object v3, p0, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "titleStr":Ljava/lang/String;
    :goto_0
    const-string v3, "title"

    invoke-virtual {p1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v3, p0, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "uri":Ljava/lang/String;
    :goto_1
    const-string v2, "intent"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-boolean v2, p0, Lcom/android/launcher4/ShortcutInfo;->customIcon:Z

    if-eqz v2, :cond_3

    .line 160
    const-string v2, "iconType"

    .line 161
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 160
    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    iget-object v2, p0, Lcom/android/launcher4/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/android/launcher4/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 176
    :cond_0
    :goto_2
    return-void

    .end local v0    # "titleStr":Ljava/lang/String;
    .end local v1    # "uri":Ljava/lang/String;
    :cond_1
    move-object v0, v2

    .line 153
    goto :goto_0

    .restart local v0    # "titleStr":Ljava/lang/String;
    :cond_2
    move-object v1, v2

    .line 156
    goto :goto_1

    .line 164
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_3
    iget-boolean v2, p0, Lcom/android/launcher4/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v2, :cond_4

    .line 165
    iget-object v2, p0, Lcom/android/launcher4/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p1, v2}, Lcom/android/launcher4/ShortcutInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 167
    :cond_4
    const-string v2, "iconType"

    .line 168
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 167
    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    iget-object v2, p0, Lcom/android/launcher4/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_0

    .line 170
    const-string v2, "iconPackage"

    .line 171
    iget-object v3, p0, Lcom/android/launcher4/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 170
    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "iconResource"

    .line 173
    iget-object v3, p0, Lcom/android/launcher4/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v3, v3, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 172
    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method final setActivity(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Landroid/content/ComponentName;
    .param p3, "launchFlags"    # I

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 141
    iget-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 143
    iget-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher4/ShortcutInfo;->itemType:I

    .line 146
    iget-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher4/ShortcutInfo;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/launcher4/ShortcutInfo;->initFlagsAndFirstInstallTime(Landroid/content/pm/PackageInfo;)V

    .line 147
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/launcher4/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShortcutInfo(title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher4/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher4/ShortcutInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/ShortcutInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher4/ShortcutInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher4/ShortcutInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/ShortcutInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/ShortcutInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/ShortcutInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher4/ShortcutInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher4/ShortcutInfo;->dropPos:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateIcon(Lcom/android/launcher4/IconCache;)V
    .locals 1
    .param p1, "iconCache"    # Lcom/android/launcher4/IconCache;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/android/launcher4/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 129
    iget-object v0, p0, Lcom/android/launcher4/ShortcutInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/android/launcher4/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher4/ShortcutInfo;->usingFallbackIcon:Z

    .line 130
    return-void
.end method
