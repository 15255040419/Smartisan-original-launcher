.class public Lcom/smartisanos/launcher/data/QuickLaunchItem;
.super Lcom/smartisanos/launcher/data/ItemInfo;
.source "QuickLaunchItem.java"


# instance fields
.field public icon:Landroid/graphics/Bitmap;

.field public intent:Landroid/content/Intent;

.field public shortcutId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/data/ItemInfo;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-byte v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/smartisanos/launcher/data/ItemInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/QuickLaunchItem;->clone()Lcom/smartisanos/launcher/data/QuickLaunchItem;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lcom/smartisanos/launcher/data/QuickLaunchItem;
    .locals 3

    .line 3
    new-instance v0, Lcom/smartisanos/launcher/data/QuickLaunchItem;

    invoke-direct {v0}, Lcom/smartisanos/launcher/data/QuickLaunchItem;-><init>()V

    .line 4
    iget-wide v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    iput-wide v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    .line 5
    iget-byte v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    iput-byte v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 6
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    iput v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->pageIndex:I

    .line 7
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    iput v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->cellIndex:I

    .line 8
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    iput v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->folderIndex:I

    .line 9
    iget-byte v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    iput-byte v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    .line 10
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    iput v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    .line 11
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    iput v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    .line 12
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->Oe()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/data/ItemInfo;->a([B)V

    .line 13
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->iconRawData:[B

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->iconRawData:[B

    .line 14
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v1}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->clone()Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;->e(Lcom/smartisanos/launcher/data/ItemInfo;)V

    .line 17
    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->color:Lcom/smartisanos/launcher/actions/sort/color/IconColor$ColorInfo;

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    .line 20
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->componentName:Ljava/lang/String;

    .line 21
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    iput-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNewlyInstalled:Z

    .line 22
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    iput-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isSystemApp:Z

    .line 23
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isCanUninstall:Z

    iput-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isCanUninstall:Z

    .line 24
    iget-boolean v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    iput-boolean v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->isNeedDowload:Z

    .line 25
    iget-wide v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->downloadId:J

    iput-wide v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->downloadId:J

    .line 26
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->usageCount:I

    iput v1, v0, Lcom/smartisanos/launcher/data/ItemInfo;->usageCount:I

    .line 27
    iget-object v1, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->intent:Landroid/content/Intent;

    .line 28
    iget-object v1, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->icon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->icon:Landroid/graphics/Bitmap;

    .line 29
    iget-object p0, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->shortcutId:Ljava/lang/String;

    iput-object p0, v0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->shortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/launcher/data/QuickLaunchItem;->clone()Lcom/smartisanos/launcher/data/QuickLaunchItem;

    move-result-object p0

    return-object p0
.end method

.method public df()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-byte v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->shortcutId:Ljava/lang/String;

    const-string v2, "shortcut_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/data/QuickLaunchItem;->z(Landroid/content/Context;)[B

    move-result-object p0

    const-string v1, "icon"

    .line 8
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public ef()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/smartisanos/launcher/data/ItemInfo;->ef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] shortcutId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->shortcutId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-wide v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->id:J

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->title:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    const-string v2, "pkg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->shortcutId:Ljava/lang/String;

    const-string v2, "shortcutId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    const-string v2, "userId"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    iget-byte v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->itemType:B

    const-string v2, "itemType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    iget v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->messagesNumber:I

    const-string v2, "messagesNumber"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/smartisanos/launcher/data/QuickLaunchItem;->z(Landroid/content/Context;)[B

    move-result-object p0

    const-string v1, "icon"

    .line 11
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public z(Landroid/content/Context;)[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_original_icon

    const-string v1, "smartisan.shortcut.final_icon"

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_original_icon

    iget-object p0, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->icon:Landroid/graphics/Bitmap;

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/e/s;->b(Landroid/graphics/Bitmap;Z)[B

    move-result-object p0

    return-object p0

    :cond_original_icon
    iget-object v0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->shortcutId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/launcher/d/j;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/smartisanos/launcher/d/k;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/launcher/d/j;->a(Lcom/smartisanos/launcher/d/k;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/e/s;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->userId:I

    invoke-static {p1, v0, v1, p0}, Lcom/smartisanos/launcher/e/s;->a(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p1, 0x1

    .line 4
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/e/s;->b(Landroid/graphics/Bitmap;Z)[B

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/launcher/data/QuickLaunchItem;->icon:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/e/s;->b(Landroid/graphics/Bitmap;Z)[B

    move-result-object p0

    return-object p0
.end method
