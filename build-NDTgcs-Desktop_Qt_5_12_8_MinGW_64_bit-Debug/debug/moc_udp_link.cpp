/****************************************************************************
** Meta object code from reading C++ file 'udp_link.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../gcs-master/source/cpp/udp_link.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'udp_link.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_udplink_t {
    QByteArrayData data[13];
    char stringdata0[121];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_udplink_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_udplink_t qt_meta_stringdata_udplink = {
    {
QT_MOC_LITERAL(0, 0, 7), // "udplink"
QT_MOC_LITERAL(1, 8, 10), // "rollchange"
QT_MOC_LITERAL(2, 19, 0), // ""
QT_MOC_LITERAL(3, 20, 5), // "rolll"
QT_MOC_LITERAL(4, 26, 11), // "pitchchange"
QT_MOC_LITERAL(5, 38, 6), // "pitchh"
QT_MOC_LITERAL(6, 45, 9), // "yawchange"
QT_MOC_LITERAL(7, 55, 4), // "yaww"
QT_MOC_LITERAL(8, 60, 12), // "newPositions"
QT_MOC_LITERAL(9, 73, 9), // "longitude"
QT_MOC_LITERAL(10, 83, 8), // "latitude"
QT_MOC_LITERAL(11, 92, 8), // "altitude"
QT_MOC_LITERAL(12, 101, 19) // "readPendingDatagram"

    },
    "udplink\0rollchange\0\0rolll\0pitchchange\0"
    "pitchh\0yawchange\0yaww\0newPositions\0"
    "longitude\0latitude\0altitude\0"
    "readPendingDatagram"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_udplink[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       5,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       4,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   39,    2, 0x06 /* Public */,
       4,    1,   42,    2, 0x06 /* Public */,
       6,    1,   45,    2, 0x06 /* Public */,
       8,    3,   48,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      12,    0,   55,    2, 0x0a /* Public */,

 // signals: parameters
    QMetaType::Void, QMetaType::Float,    3,
    QMetaType::Void, QMetaType::Float,    5,
    QMetaType::Void, QMetaType::Float,    7,
    QMetaType::Void, QMetaType::Double, QMetaType::Double, QMetaType::Int,    9,   10,   11,

 // slots: parameters
    QMetaType::Void,

       0        // eod
};

void udplink::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<udplink *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->rollchange((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 1: _t->pitchchange((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 2: _t->yawchange((*reinterpret_cast< float(*)>(_a[1]))); break;
        case 3: _t->newPositions((*reinterpret_cast< double(*)>(_a[1])),(*reinterpret_cast< double(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3]))); break;
        case 4: _t->readPendingDatagram(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (udplink::*)(float );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&udplink::rollchange)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (udplink::*)(float );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&udplink::pitchchange)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (udplink::*)(float );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&udplink::yawchange)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (udplink::*)(double , double , int );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&udplink::newPositions)) {
                *result = 3;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject udplink::staticMetaObject = { {
    &QObject::staticMetaObject,
    qt_meta_stringdata_udplink.data,
    qt_meta_data_udplink,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *udplink::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *udplink::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_udplink.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int udplink::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 5)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 5;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 5)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 5;
    }
    return _id;
}

// SIGNAL 0
void udplink::rollchange(float _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void udplink::pitchchange(float _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void udplink::yawchange(float _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void udplink::newPositions(double _t1, double _t2, int _t3)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)), const_cast<void*>(reinterpret_cast<const void*>(&_t2)), const_cast<void*>(reinterpret_cast<const void*>(&_t3)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
