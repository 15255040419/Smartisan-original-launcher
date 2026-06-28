.class Landroid/icu/impl/ICUResourceBundle$4;
.super Landroid/icu/impl/ICUResourceBundle$Loader;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$baseName:Ljava/lang/String;

.field final synthetic val$defaultID:Ljava/lang/String;

.field final synthetic val$fullName:Ljava/lang/String;

.field final synthetic val$localeID:Ljava/lang/String;

.field final synthetic val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

.field final synthetic val$root:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;Ljava/lang/String;)V
    .locals 0

    .line 1152
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$fullName:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$localeID:Ljava/lang/String;

    iput-object p4, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$root:Ljava/lang/ClassLoader;

    iput-object p5, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    iput-object p6, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$defaultID:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundle$Loader;-><init>(Landroid/icu/impl/ICUResourceBundle$1;)V

    return-void
.end method


# virtual methods
.method public load()Landroid/icu/impl/ICUResourceBundle;
    .locals 9

    .line 1155
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1163
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "root"

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 1164
    :goto_0
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$localeID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$localeID:Ljava/lang/String;

    .line 1165
    :goto_1
    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$root:Ljava/lang/ClassLoader;

    invoke-static {v3, v2, v4}, Landroid/icu/impl/ICUResourceBundle;->createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v3

    .line 1167
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->access$000()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The bundle created is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " and openType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " and bundle.getNoFallback="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    invoke-static {v3}, Landroid/icu/impl/ICUResourceBundle;->access$500(Landroid/icu/impl/ICUResourceBundle;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    move v7, v5

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1168
    :cond_4
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    sget-object v6, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    if-eq v4, v6, :cond_c

    if-eqz v3, :cond_5

    invoke-static {v3}, Landroid/icu/impl/ICUResourceBundle;->access$500(Landroid/icu/impl/ICUResourceBundle;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto/16 :goto_5

    :cond_5
    const/16 v4, 0x5f

    if-nez v3, :cond_8

    .line 1185
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-eq v4, v1, :cond_6

    .line 1188
    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1189
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$defaultID:Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$root:Ljava/lang/ClassLoader;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v1, v0, v2, v3, p0}, Landroid/icu/impl/ICUResourceBundle;->access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    :goto_3
    move-object v3, p0

    goto/16 :goto_5

    .line 1192
    :cond_6
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    sget-object v4, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$defaultID:Ljava/lang/String;

    .line 1193
    invoke-static {v1, v2}, Landroid/icu/impl/ICUResourceBundle;->access$700(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1195
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$defaultID:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$root:Ljava/lang/ClassLoader;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v0, v1, v1, v2, p0}, Landroid/icu/impl/ICUResourceBundle;->access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    goto :goto_3

    .line 1196
    :cond_7
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    sget-object v2, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ONLY:Landroid/icu/impl/ICUResourceBundle$OpenType;

    if-eq v1, v2, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1198
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$root:Ljava/lang/ClassLoader;

    invoke-static {v1, v0, p0}, Landroid/icu/impl/ICUResourceBundle;->createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    .line 1203
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object v6

    .line 1204
    invoke-virtual {v6, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1207
    move-object v7, v3

    check-cast v7, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    const-string v8, "%%Parent"

    invoke-virtual {v7, v8}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->findString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 1209
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$defaultID:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$root:Ljava/lang/ClassLoader;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v0, v7, v1, v2, p0}, Landroid/icu/impl/ICUResourceBundle;->access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    goto :goto_4

    :cond_9
    if-eq v4, v1, :cond_a

    .line 1211
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$defaultID:Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$root:Ljava/lang/ClassLoader;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v0, v1, v2, v4, p0}, Landroid/icu/impl/ICUResourceBundle;->access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    goto :goto_4

    .line 1212
    :cond_a
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1213
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$baseName:Ljava/lang/String;

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$defaultID:Ljava/lang/String;

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$root:Ljava/lang/ClassLoader;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$4;->val$openType:Landroid/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v1, v0, v2, v4, p0}, Landroid/icu/impl/ICUResourceBundle;->access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    .line 1216
    :cond_b
    :goto_4
    invoke-virtual {v3, v2}, Landroid/icu/impl/ICUResourceBundle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    .line 1217
    invoke-virtual {v3, v2}, Landroid/icu/impl/ICUResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    :cond_c
    :goto_5
    return-object v3
.end method
