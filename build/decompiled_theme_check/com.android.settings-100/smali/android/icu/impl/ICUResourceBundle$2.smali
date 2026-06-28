.class Landroid/icu/impl/ICUResourceBundle$2;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ICUResourceBundle;->addBundleBaseNamesFromClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$bn:Ljava/lang/String;

.field final synthetic val$names:Ljava/util/Set;

.field final synthetic val$root:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    .line 609
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$2;->val$root:Ljava/lang/ClassLoader;

    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle$2;->val$bn:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/impl/ICUResourceBundle$2;->val$names:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 609
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle$2;->run()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/Void;
    .locals 6

    const/4 v0, 0x0

    .line 615
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$2;->val$root:Ljava/lang/ClassLoader;

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundle$2;->val$bn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 619
    :cond_0
    new-instance v2, Landroid/icu/impl/ICUResourceBundle$2$1;

    invoke-direct {v2, p0}, Landroid/icu/impl/ICUResourceBundle$2$1;-><init>(Landroid/icu/impl/ICUResourceBundle$2;)V

    .line 628
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 629
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/URL;

    .line 630
    invoke-static {p0}, Landroid/icu/impl/URLHandler;->get(Ljava/net/URL;)Landroid/icu/impl/URLHandler;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 p0, 0x0

    .line 632
    invoke-virtual {v3, v2, p0}, Landroid/icu/impl/URLHandler;->guide(Landroid/icu/impl/URLHandler$URLVisitor;Z)V

    goto :goto_0

    .line 634
    :cond_2
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handler for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is null"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 638
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->access$000()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ouch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method
